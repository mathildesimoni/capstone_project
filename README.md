# Capstone Project: A Name-Based Race Classifier Using Name Embedding and Collaborations in Academia
My capstone thesis is computational social sience at New York University Abu Dhabi

Supervisors: Talal Rahwan, Bedoor AlShebli, Fengyuan "Michael" Liu

### Abstract
Names tell a lot about someone. They are indicators of gender, country of origin, religion, age, or parent’s main fields of interest. In addition, they are perceived as the most practical way to gather race information. Today, inferring race from name is often needed for economic and political science research, but existing name-based race classifiers have limited accuracy and availability. They are often trained on unrepresentative datasets and are less accurate for under-represented communities, or are not freely available.
 
To fill this gap, we propose a novel approach for race classification, using name embedding and collaborations in academia. Exploiting the phenomenon of homophily in communication patterns, we assumed that authors collaborate more frequently with other scholars of the same race. This allowed us to use the Microsoft Academic Graph, a dataset gathering data on collaborations of millions of authors, to learn name embedding and encode a wide variety of names. We subsequently generated lists of synthetic full names for each race category, combining first and last names from a US voters' dataset with self-reported race (as defined by the US Census Bureau). A K-Nearest-Neighbors classifier was trained and tested and obtained an accuracy of 95.45\% with an F1-score of 0.955. It performed better than Namsor (accuracy of 76.90\%), currently the most accurate name verification technology, on a benchmark set of a thousand names. In addition, the prediction errors were balanced across race groups. We believe that this tool will be useful for future research where race information is needed, but not available.

### Other files
Most of the work was performed on NYUAD HPC "jubail" hence cannot be presented here (big files, a lot of data).
![](./code_local_computer/name_embedding_visualizations/results/OlympicsFirstNames_1.png)
