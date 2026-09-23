library("maaslin3")

taxa_table_short <- read.csv("girasoles-mag-taxonomy.csv", sep = ',', row.names = 1, check.names = FALSE)
metadata <- read.csv("girasoles-mag-metadata.csv", sep = ',', row.names = 1, check.names = FALSE)

metadata <- read.csv("girasoles_metag_metadata-full.csv", sep = ',', row.names = 1, check.names = FALSE)
metadata$condition <- factor(
    metadata$condition,
    levels = c("stressed", "non-stressed")
)

fit_out <- maaslin3(
    input_data = taxa_table_short,
    input_metadata = metadata,
    output = "maaslin-529/urinesg-.05-.8",
    formula = "~ urine_sg_baseline",
    min_prevalence = 0.05,
    max_significance = 0.8
)

fit_out <- maaslin3(
    input_data = taxa_table_short,
    input_metadata = metadata,
    output = "maaslin-529/bmi-.05-.8",
    formula = "~ bmi",
    min_prevalence = 0.05,
    max_significance = 0.8
)

fit_out <- maaslin3(
    input_data = taxa_table_short,
    input_metadata = metadata,
    output = "maaslin-529/creatinine-.05-.8",
    formula = "~ Creatinine",
    min_prevalence = 0.05,
    max_significance = 0.8
)

#circ_waist_avg
fit_out <- maaslin3(
    input_data = taxa_table_short,
    input_metadata = metadata,
    output = "maaslin-529/circ_waist_avg-.05-.8",
    formula = "~ circ_waist_avg",
    min_prevalence = 0.05,
    max_significance = 0.8
)

fit_out <- maaslin3(
    input_data = taxa_table_short,
    input_metadata = metadata,
    output = "maaslin-529/stress_ease-.05-.8",
    formula = "~ Stressed_Over_3",
    min_prevalence = 0.05,
    max_significance = 0.8
)

fit_out <- maaslin3(
    input_data = taxa_table_short,
    input_metadata = metadata,
    output = "maaslin-529/glyph_ease-.05-.8",
    formula = "~ Glyphosate",
    min_prevalence = 0.05,
    max_significance = 0.8
)

fit_out <- maaslin3(
    input_data = taxa_table_short,
    input_metadata = metadata,
    output = "maaslin-521/glyph_results_ease",
    formula = "~ Glyphosate",
    min_prevalence = 0.2
)
