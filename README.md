# 🍲 LWC Spoonacular Recipe Finder

A **Salesforce Lightning Web Component (LWC)** project that integrates with the **Spoonacular API** to fetch recipes based on ingredients and retrieve random recipes dynamically.
This project demonstrates real-time API integration, Apex callouts, parent-child component communication, and dynamic UI rendering in Salesforce.

---

## 🚀 Features

✅ Search recipes using ingredients
✅ Fetch random recipes instantly
✅ Parent → Child LWC communication using `@api` properties
✅ Apex HTTP callouts to external REST API
✅ Lazy loading of full recipe details
✅ Rich UI using `lightning-layout` and `lightning-card`

---

## 🏗️ Project Architecture

```
LWC Parent Component
        │
        │ (fetch recipes list)
        ▼
 Apex Controller (HTTP Callout)
        │
        ▼
 Spoonacular REST API
        │
        ▼
 Child LWC Component (Recipe Details)
```

### Components

**Parent LWC**

* Search by ingredients
* Fetch random recipes
* Render recipe list dynamically

**Child LWC**

* Displays recipe card
* Fetches full recipe details on demand

**Apex Class**

* Handles external API callouts
* Returns JSON response to LWC

---

## 🧰 Tech Stack

* Salesforce Lightning Web Components (LWC)
* Apex REST Callouts
* JavaScript (ES6)
* HTML + SLDS
* Spoonacular Public API

---

## 📂 Project Structure

```
force-app
 └── main/default
     ├── classes
     │     └── Spoonacular.cls
     └── lwc
           ├── parentSpoonacularReciepe
           └── childSpoonacularApi
```

---

## ⚙️ Setup Instructions

### 1️⃣ Clone the Repository

```bash
git clone https://github.com/your-username/lwc-spoonacular-recipe.git
cd lwc-spoonacular-recipe
```

---

### 2️⃣ Authorize Salesforce Org

```bash
sf org login web -a DevOrg
```

---

### 3️⃣ Deploy Source

```bash
sf project deploy start
```

---

### 4️⃣ Enable Callouts (Important)

Add Spoonacular API endpoint in:

```
Setup → Remote Site Settings
```

Add:

```
https://api.spoonacular.com
```

---

### 5️⃣ API Key Configuration (Best Practice)

⚠️ Do **NOT** store API keys directly inside Apex for production.

Recommended approaches:

* Named Credentials
* Custom Metadata
* Protected Custom Settings

---

## 🔎 How It Works

### Fetch Random Recipe

1. User clicks **Get Random Recipe**
2. LWC calls Apex method `getRandomRecipe`
3. Apex performs HTTP GET callout
4. Response JSON is parsed and displayed

---

### Search by Ingredients

1. User enters ingredients (e.g. `tomato,cheese`)
2. Click **Search**
3. Apex calls Spoonacular `/findByIngredients`
4. Results render dynamically in UI

---

### Load Full Recipe Details

* Child component calls Apex `getRecipe`
* Details like:

  * Summary
  * Diet Types
  * Dish Types
  * Price Per Serving
  * Ready Time

---

## 💡 Key Concepts Demonstrated

* Parent ↔ Child communication
* External API Integration in Salesforce
* Lazy Data Loading
* JSON Parsing
* Lightning Layout Design
* Apex Callout Patterns

---

## 🖼️ UI Overview

* Search bar for ingredients
* Random recipe button
* Recipe cards with images
* Expandable detailed view

---

## 🛠️ Future Improvements

* Move API key to Named Credential
* Add loading spinner & error UI
* Pagination support
* Recipe favorites feature
* Lightning Message Service integration
* Cache API responses

---

## 🧪 Example Ingredient Search

```
tomato, onion, garlic
```

---

## 🤝 Contributing

Pull requests are welcome!
If you find issues or want enhancements, feel free to open an issue.

---

## 📄 License

This project is for learning and demo purposes.

---

## 👨‍💻 Author

Salesforce Developer — LWC & Apex Integration Project
