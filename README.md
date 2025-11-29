# MERN Blog Application

A modern, full-stack blog application built with the MERN stack (MongoDB, Express.js, React.js, Node.js). This project demonstrates seamless integration between a React frontend and an Express backend, featuring a futuristic "Glassmorphism" UI design.

## Features

- **Full CRUD Operations**: Create, Read, Update, and Delete blog posts.
- **Search & Filtering**: Real-time search by title/content and filtering by categories.
- **Modern UI/UX**:
  - Futuristic Glassmorphism design system.
  - Dark mode with neon accents.
  - Responsive layout for all devices.
  - Smooth animations and transitions.
- **Category Management**: Organize posts into dynamic categories.
- **Data Seeding**: Includes a script to populate the database with sample data.

## Tech Stack

- **Frontend**: React.js, Vite, React Router, Axios, Custom CSS.
- **Backend**: Node.js, Express.js.
- **Database**: MongoDB, Mongoose.
- **Tools**: Postman (for API testing), Concurrently (for running servers).

## Setup Instructions

### Prerequisites
- Node.js (v14+ recommended)
- MongoDB installed and running locally

### 1. Clone the Repository
```bash
git clone <repository-url>
cd mern-blog
```

### 2. Backend Setup
Navigate to the server directory and install dependencies:
```bash
cd server
npm install
```

Create a `.env` file in the `server` directory:
```env
PORT=5000
MONGODB_URI=mongodb://127.0.0.1:27017/mern-blog
NODE_ENV=development
```

Seed the database (Optional):
```bash
node seed.js
```

Start the server:
```bash
npm run dev
```

### 3. Frontend Setup
Open a new terminal, navigate to the client directory, and install dependencies:
```bash
cd client
npm install
```

Start the React development server:
```bash
npm run dev
```

The application will be available at `http://localhost:5173`.

## API Documentation

### Posts
- `GET /api/posts`: Get all posts (supports `?search=` and `?category=` queries).
- `GET /api/posts/:id`: Get a single post by ID.
- `POST /api/posts`: Create a new post.
- `PUT /api/posts/:id`: Update a post.
- `DELETE /api/posts/:id`: Delete a post.

### Categories
- `GET /api/categories`: Get all categories.
- `POST /api/categories`: Create a new category.

## Screenshots

### Home Page
![Home Page Placeholder](/screenshots/home.png)
*Modern landing page with hero section and post grid.*

### Single Post View
![Single Post Placeholder](/screenshots/post.png)
*Immersive reading experience with hero image.*

### Create/Edit Post
![Form Placeholder](/screenshots/form.png)
*Intuitive form for content creation.*

## License
This project is open source and available under the [MIT License](LICENSE).