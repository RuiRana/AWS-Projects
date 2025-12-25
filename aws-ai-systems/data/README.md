# Data Layer – Curated Data and Retrieval (RAG)

This folder documents how data is prepared, curated, and retrieved for use within the AWS AI system.

The data layer is responsible for ensuring that all AI services operate on trusted, validated, and governed information.

---

## Data Lifecycle

Data flows through the system in stages:

1. Raw data is ingested from internal and external sources
2. Raw data is processed, cleaned, and validated
3. Processed data is transformed into curated datasets
4. Curated data is stored in controlled data stores
5. AI services access curated data only

Generative AI and Machine Learning services never interact directly with raw data.

---

## What Is Curated Data?

Curated data is data that has been:

- Cleaned and validated
- Structured or normalised
- Checked for accuracy and completeness
- Approved for analytical and AI usage
- Governed by access controls and policies

Curated data represents a trusted source of truth.

---

## Why AI Systems Use Curated Data Only

Using curated data ensures:

- Reduced hallucination risk
- Higher accuracy and consistency
- Protection of sensitive information
- Clear auditability and traceability
- Predictable and explainable AI outputs

Raw data is often noisy, incomplete, or sensitive and is therefore unsuitable for direct AI consumption.

---

## Retrieval-Augmented Generation (RAG)

Retrieval-Augmented Generation (RAG) allows Generative AI to produce responses based on trusted data rather than general knowledge.

In this system:

- Curated data is converted into embeddings
- Embeddings are stored in a vector database
- Relevant information is retrieved at query time
- Retrieved content is passed to Amazon Bedrock
- Bedrock generates responses grounded in retrieved data

This approach ensures responses are accurate and data-driven.

---

## Role of Embeddings

Embeddings are numerical representations of data that capture semantic meaning.

They enable:

- Fast similarity search
- Context-aware retrieval
- Efficient use of large datasets
- Controlled information access

Embeddings do not store raw text in a readable form, improving security and privacy.

---

## Storage Technologies

Typical storage services include:

- Amazon S3 for curated datasets
- Vector databases for embedding storage
- Feature stores for machine learning inputs

The exact services may vary by use case, but the principle remains the same.

---

## Summary

The data layer acts as the foundation of the AI system.

By enforcing curation, governance, and retrieval controls, it ensures that Machine Learning and Generative AI services operate safely, accurately, and responsibly.
