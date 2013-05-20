
MKDIR = mkdir -p

OUTDIR = build

all: slides

slides: ${OUTDIR} ${OUTDIR}/images ${OUTDIR}/fonts
	pandoc -t dzslides --template template.html -s slides.md -o ${OUTDIR}/index.html

${OUTDIR}:
	${MKDIR} ${OUTDIR}

${OUTDIR}/images:
	cp -a img ${OUTDIR}/

${OUTDIR}/fonts:
	cp -a fonts ${OUTDIR}/

clean:
	rm -rf ${OUTDIR}
