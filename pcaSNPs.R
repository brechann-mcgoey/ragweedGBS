###PCA of SNP data###

## Europe
#convert vcf file to geno format
vcf2geno("eur_all.vcf", output.file = "eur_test.geno", force = TRUE)

#conduct pca on geno file
pc=pca("eur_test.geno", center = TRUE, scale = FALSE)

#get summary of pca
summary(pc)

#run Tracy-Widom tests
tw=tracy.widom(pc)

#get tw p values
tw$pvalues

## North America
#convert vcf file to geno format
vcf2geno("nam_all.vcf", output.file = "nam.geno", force = TRUE)

#conduct pca on geno file
pcn=pca ("nam.geno", center = TRUE, scale = FALSE)

#get summary of pca
summary(pcn)

#run Tracy-Widom tests
twn=tracy.widom(pcn)

#get tw p values
twn$pvalues