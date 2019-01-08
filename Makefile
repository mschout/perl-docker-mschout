VERSIONS = 5.28 \
	5.26 \
	5.24 \
	5.22 \
	5.20 \
	5.18 \
	5.16 \
	5.14 \
	5.12 \
	5.10

.PHONY: $(VERSIONS)

all:
	@for version in $(VERSIONS); do \
		echo building perl-mschout:$$version ; \
		(cd $$version && docker build -t perl-mschout:$$version .) ; \
	done

pull:
	@for version in $(VERSIONS); do \
		docker pull perl-dzil-mschout:$$version ; \
	done
