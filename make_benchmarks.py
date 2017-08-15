import sys
import yaml


def read_packages(f):
    pkgs = yaml.load(f)
    for pkg in pkgs:
        enrich_package(pkg)
    return pkgs


def enrich_package(pkg):
    path = pkg['import']
    username = path.split('/')[1]
    pkg.setdefault('alias', username.lower())
    pkg.setdefault('label', username.title())


benchmark_template = '''
func Benchmark{label}{name}(b *testing.B) {{
    points := RandomPoints(b.N)
    b.ResetTimer()
    for i := 0; i < b.N; i++ {{
        {alias}.{func}
    }}
}}
'''

def output_benchmarks(pkgs):
    print 'package geohashbench'
    print

    print 'import ('
    print '\t"testing"'
    for pkg in pkgs:
        print '\t{alias} "{import}"'.format(**pkg)
    print ')'

    for pkg in pkgs:
        for name, tmpl in pkg.get('benchmarks', {}).items():
            func = tmpl.format(lat='points[i][0]', lng='points[i][1]')
            print benchmark_template.format(
                    func=func,
                    name=name,
                    **pkg
                    )


def main(args):
    filename = args[1]
    with open(filename) as f:
        pkgs = read_packages(f)
    output_benchmarks(pkgs)


if __name__ == '__main__':
    main(sys.argv)
