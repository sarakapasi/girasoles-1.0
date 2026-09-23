library("maaslin3")

taxa_table <- read.csv("16S-maaslin-tax.csv", sep = ',', row.names = 1)
taxa_table_short <- read.csv("16S-maaslin-tax-short.csv", sep = ',', row.names = 1)
metadata <- read.csv("16-maaslin-metadata.tsv", sep = '\t', row.names = 1)
metadata$Stressed_Over_3 <- factor(
    metadata$Stressed_Over_3,
    levels = c("Stressed", "Non-stressed", "NA")

#urine specific gravity
fit_out <- maaslin3(
    input_data = taxa_table_short,
    input_metadata = metadata,
    output = "maaslin-16S/urinesg-.05-.8",
    formula = "~ urine_sg_baseline",
    min_prevalence = 0.05,
    max_significance = 0.8
)

#bmi
fit_out <- maaslin3(
    input_data = taxa_table_short,
    input_metadata = metadata,
    output = "maaslin-16S/bmi-.05-.8",
    formula = "~ bmi",
    min_prevalence = 0.05,
    max_significance = 0.8
)

#creatinine
fit_out <- maaslin3(
    input_data = taxa_table_short,
    input_metadata = metadata,
    output = "maaslin-16S/creatinine-.05-.8",
    formula = "~ Creatinine",
    min_prevalence = 0.05,
    max_significance = 0.8
)

#circ_waist_avg
fit_out <- maaslin3(
    input_data = taxa_table_short,
    input_metadata = metadata,
    output = "maaslin-16S/circ_waist_avg-.05-.8",
    formula = "~ circ_waist_avg",
    min_prevalence = 0.05,
    max_significance = 0.8
)

#stress
fit_out <- maaslin3(
    input_data = taxa_table_short,
    input_metadata = metadata,
    output = "maaslin-16S/stress_ease-.05-.8",
    formula = "~ Stressed_Over_3",
    min_prevalence = 0.05,
    max_significance = 0.8
)

#glyphosate
fit_out <- maaslin3(
    input_data = taxa_table_short,
    input_metadata = metadata,
    output = "maaslin-16S/glyph_ease-.05-.8",
    formula = "~ Glyphosate",
    min_prevalence = 0.05,
    max_significance = 0.8
)

#glyphosate at different threshold
fit_out <- maaslin3(
    input_data = taxa_table_short,
    input_metadata = metadata,
    output = "maaslin-16S/glyph_results_ease",
    formula = "~ Glyphosate",
    min_prevalence = 0.2,
)

#glyphosate and stress
fit_out <- maaslin3(
    input_data = taxa_table_short,
    input_metadata = metadata,
    output = "maaslin-16S/glyph_stress_results_ease-.05-.8",
    formula = "~ Glyphosate + Stressed_Over_3",
    min_prevalence = 0.05,
    max_significance = 0.8
)
