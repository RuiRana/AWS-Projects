# Amazon SageMaker – Machine Learning Decision Layer

This folder documents how Amazon SageMaker is used to build, train, and deploy machine learning models within the AWS AI system.

Amazon SageMaker is responsible for analytical decision-making based on curated data, not for user interaction or natural language generation.

---

## Role of Amazon SageMaker in This System

In this architecture, Amazon SageMaker is used to:

- Train machine learning models on curated datasets
- Generate predictions, classifications, and scores
- Perform analytical decision-making
- Produce structured outputs that can be consumed by other systems
- Provide trusted model outputs for Generative AI explanation

SageMaker is the **decision layer** of the system.

---

## What Amazon SageMaker Is Used For

- Predictive modeling (e.g. risk, churn, forecasting)
- Classification and scoring
- Feature engineering and model training
- Batch and real-time inference
- Producing explainable, structured outputs

---

## What Amazon SageMaker Is NOT Used For

- Conversational interfaces
- Natural language explanations
- Direct user interaction
- Generating free-form text responses
- Replacing Generative AI services

User-facing interactions are handled by Amazon Bedrock.

---

## Data Access Pattern

Amazon SageMaker operates only on curated data.

Typical inputs include:
- Cleaned datasets stored in Amazon S3
- Feature sets derived from processed data pipelines
- Structured numerical or categorical data

Raw, unvalidated data is not used directly for modeling.

---

## Relationship Between SageMaker and Bedrock

Amazon SageMaker and Amazon Bedrock serve complementary roles:

- SageMaker produces **decisions and scores**
- Bedrock produces **explanations and summaries**
- Bedrock may reference SageMaker outputs
- SageMaker does not rely on Bedrock

This separation ensures reliability, explainability, and cost control.

---

## Security and Cost Considerations

- Access controlled via IAM roles
- Models are trained and deployed only when required
- Batch inference used where possible to reduce cost
- No always-on infrastructure unless justified

---

## Summary

Amazon SageMaker provides the analytical foundation of the AI system.

It ensures that predictions and decisions are data-driven, explainable, and trustworthy, while Generative AI enhances usability rather than replacing analytical logic.
