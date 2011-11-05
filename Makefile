#
# $Id: Makefile,v 1.16 2006/11/09 22:20:29 pda Exp $
#
# Makefile du cours de sécurité des systèmes et des réseaux
#
# Historique
#   2005/10/02 : pda : conception
#   2006/11/03 : pda : ajout httpauth.fig
#   2009/11/07 : jmo : passage à beamer et pdflatex
#

LATEX = latex
MPAGE2 = mpage -2 -a <
MPAGE4 = psnup -pa4 -r -c -4 -d <
#MPAGE4 = psnup -pa4 -r -4 -d <
ENS = \
	110931_SSI
	#110201_JAVA \
	#090916_Hosting \
	#090930_BlocDeFormation \
	#091114_ADMIN_JMX \
	#100125_EPITECH \
	#100126_BarretosCancerHospital \
	#100127_BioValleyIHU \
	#100130_Audit \
	#100330_DUN \
	#100428_ADMIN_JMX \
	#100519_CISCO \
	#100705_EITS \
	#100824_RD \
	#100927_ENVOL \
	#100215_GL
#SRC	:= $(shell egrep -rl '^[^%]*\\begin\{document\}' prez/*.tex | sed -e "s/prez\///")
#PDF	= $(SRC:%.tex=%.pdf)
PDF	= $(ENS:%=%.pdf)


.SUFFIXES:	.ps .fig .pdf .eps .jpg .png

.png:
	ebb $*.png

.fig.ps:
	fig2dev -L eps $*.fig > $*.ps

.tiff.ps:
	tiff2ps $*.tiff > $*.ps

.fig.pdf:
	fig2dev -L eps $*.fig > $*.eps
	ps2pdf13 $*.eps $*-eps-converted-to.pdf

.fig.eps:
	fig2dev -L eps $*.fig > $*.eps

.jpg.pdf:
	convert $*.jpg $*.pdf

TEXSTUFF = \
	latex/jmoBeamer.sty \
	latex/epstopdf.dtx

PARTS_110931_SSI = \
	prez/$(ENS).tex \
 	cours/$(ENS)20112012.tex \
 	slides/userJMOfr.tex \
 	cours/biblio$(ENS).tex \
	cours/chap$(ENS)01.tex \
	cours/chap$(ENS)02.tex \
	cours/chap$(ENS)03.tex \
	cours/chap$(ENS)04.tex \
	cours/chap$(ENS)05.tex \
	cours/chap$(ENS)06.tex \
	cours/chap$(ENS)07.tex \
	cours/chap$(ENS)08.tex \
	cours/chap$(ENS)09.tex \
	cours/chap$(ENS)10.tex

PARTS_110201_JAVA = \
	prez/$(ENS).tex \
 	cours/$(ENS)20100110.tex \
 	slides/userJMOfr.tex \
 	cours/biblio$(ENS).tex \
 	cours/chap$(ENS)01.tex \
 	cours/chap$(ENS)02.tex \
 	cours/chap$(ENS)03.tex \
 	cours/chap$(ENS)04.tex \
 	cours/chap$(ENS)05.tex \
 	cours/chap$(ENS)06.tex \
 	cours/chap$(ENS)07.tex 
# 	chap$(ENS)08.tex \
# 	chap$(ENS)09.tex \
# 	chap$(ENS)10.tex \
# 	chap$(ENS)11.tex \
# 	chap$(ENS)12.tex

PARTS_090930_BlocDeFormation = \
	prez/$(ENS).tex

FIGS_110931_SSI =	\
	couts.pdf \
	sophist.pdf \
	troisprinc.pdf \
	demarche.pdf \
	BambooBook-BindingUCR.pdf \
	\
	buffov1.pdf buffov2.pdf bufovpax.pdf \
	unixpass.pdf \
	\
	eth-vamp.pdf eth-hub.pdf \
	rj45-tap.pdf \
	fo.pdf fo-tap.pdf \
	arp.pdf portsteal.pdf arp-pois.pdf \
	rlogin.pdf x11auth.pdf httpauth.pdf \
	tcp-seq.pdf tcp-auto.pdf \
	ipspooftcp.pdf tcphijack.pdf \
	dnspoison.pdf \
	dos-chargen.pdf \
	\
	buffov1.pdf \
	buffov2.pdf \
	bufovpax.pdf \
	unixpass.pdf \
	\
	eth-vamp.pdf \
	eth-hub.pdf \
	rj45-tap.pdf \
	fo.pdf \
	fo-tap.pdf \
	arp.pdf \
	portsteal.pdf \
	arp-pois.pdf \
	rlogin.pdf \
	x11auth.pdf \
	httpauth.pdf \
	tcp-auto.pdf \
	tcp-seq.pdf \
	ipspooftcp.pdf \
	tcphijack.pdf \
	dnspoison.pdf \
	dos-chargen.pdf \
	\
	crypt.pdf \
	algo-vernam.pdf algo-rc4.pdf \
	algo-ecb.pdf algo-cbc.pdf algo-cfb.pdf algo-ofb.pdf \
	algo-des1.pdf algo-des2.pdf algo-des3.pdf \
	algo-idea1.pdf algo-idea2.pdf \
	crypt-kpub.pdf \
	conf-hybr.pdf \
	man-middle.pdf \
	hash.pdf algo-md5.pdf \
	sign-kpub.pdf \
	mac-sym.pdf mac-hash.pdf \
	sign-dig.pdf sign-conf.pdf \
	vigenere.tiff \
	auth-sym.pdf auth-kpub.pdf \
	\
	ssh-archi.pdf \
	ssh-pro0.pdf ssh-pro1.pdf ssh-pro2.pdf ssh-pro3.pdf \
	ssh-pubkey.pdf \
	ssh-chan.pdf \
	ssl-pile.pdf ssl-secret.pdf \
	ssl-pro0.pdf ssl-pro1.pdf ssl-pro2.pdf

FIGS_090930_BlocDeFormation = \
	media/pictures/Bloc_e2.png \
	media/pictures/Bloc_e3.png \
	media/pictures/Bloc_e7.png \
	media/pictures/Bloc1.png \
	media/pictures/Bloc2.png \
	media/pictures/Bloc3.png \
	media/pictures/Bloc4.png \
	media/pictures/Bloc5.png \
	media/pictures/Bloc7.png \
	media/pictures/Bloc8.png \
	media/pictures/Bloc11.png \
	media/pictures/Bloc12.png

FIGS_110201_JAVA = \
	media/pictures/FiftyYearsOfProgressInSoftwareEngineering1.eps \
	media/pictures/FiftyYearsOfProgressInSoftwareEngineering2.eps

FIGS_100927_ENVOL = \
	media/pictures/logoCC.png

PARTS =	$(PARTS_$((ENS))

FIGS =	$(FIGS_$((ENS))

FIGSMIN = \
	$(FIGS_110931_SSI)
#	$(FIGS_090930_BlocDeFormation)
#	$(FIGS_100201_JAVA)

figs: $(addprefix media/pictures/,$(FIGSMIN)) 

#all: $(PDF) $(FIGS) $(PARTS) $(TEXSTUFF) $(addprefix tmp/,$(FIGSMIN)) $(addsuffix .tex,$(addprefix prez/,$(ENS)))
all: $(PDF) $(FIGS) $(PARTS) $(TEXSTUFF) $(addprefix media/pictures/,$(FIGSMIN)) $(addsuffix .tex,$(addprefix prez/,$(ENS)))

tmp/%.png: %.png
	convert -scale 10% $< $@
	ebb $<

%.pdf: prez/%.tex
	# Pour les cours genre SSI avec des fig/eps il faut passer par pdflatex
	pdflatex -shell-escape $<
#	latexmk --pdf $<

#$(ENS).pdf: 
#$(ENS).ps:	$(ENS).dvi
#	dvips -K -f $(ENS) > $(ENS).ps

#$(ENS).dvi:	$(ENS).tex $(FIGS) $(PARTS)
#	$(LATEX) $(ENS)

#2.ps:	$(ENS).ps
#	$(MPAGE2) $(ENS).ps > 2.ps

#4.ps:	$(ENS).ps
#	$(MPAGE4) $(ENS).ps > 4.ps

clean:
#	cleantex -a $(ENS)
	rm -f *.aux *.ps $(GENERES) *.bak *.dvi *.aux *.log *.nav *.out *.snm *.toc *.pdf *.eps *.fdb_latexmk *.vrb
