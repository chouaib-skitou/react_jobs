
# React Job Listings Application

This is a React application built using Vite. The project demonstrates a job listings platform where users can view, add, edit, and delete job postings. It incorporates key React concepts and libraries, providing a solid foundation for building modern web applications.

## Features

- **Home Page:** Showcases a hero section and a list of job postings.
- **Dynamic Components:** Uses props, default props, and reusable wrapper components.
- **Routing:** Implements React Router for multi-page navigation, including a custom 404 page.
- **Job Listings:** Displays a list of job postings fetched from a mock JSON server.
- **Single Job View:** View detailed information about a specific job using dynamic routes.
- **Job Management:** Add, edit, and delete job postings using forms and HTTP requests.
- **State Management:** Utilizes the `useState` and `useEffect` hooks for dynamic state and data fetching.
- **Styling:** Styled using Tailwind CSS for responsive and modern design.
- **Toast Notifications:** Integrated with React Toastify for user feedback on actions like adding or deleting jobs.
- **Production Build:** Optimized for production using Vite's build system.

## Technologies Used

- **Frontend:** React, React Router, React Icons, Tailwind CSS
- **Mock Backend:** JSON Server
- **Additional Libraries:** React Toastify
- **Build Tool:** Vite

## Installation

Follow these steps to set up the project locally:

1. **Clone the Repository**
   ```bash
   git clone <repository-url>
   cd <repository-directory>
   ```

2. **Install Dependencies**
   Make sure you have `npm` installed, then run:
   ```bash
   npm install
   ```

3. **Start the Development Server**
   ```bash
   npm run dev
   ```

4. **Run JSON Server**
   Start the mock backend server for job listings:
   ```bash
   npx json-server --watch db.json --port 5000
   ```

5. **Access the Application**
   Open your browser and navigate to `http://localhost:5173`.

## Folder Structure

- **src/components**: Contains reusable React components like Navbar, Hero, JobListings, etc.
- **src/pages**: Includes page components for routing (e.g., HomePage, JobsPage, SingleJobPage).
- **src/layouts**: Layout components for consistent design across pages.
- **src/styles**: Custom CSS files and Tailwind configuration.
- **db.json**: Mock data for the JSON server.

## Scripts

- **Start Development Server:** `npm run dev`
- **Build for Production:** `npm run build`
- **Serve Production Build:** `npm run preview`
- **Run JSON Server:** `npx json-server --watch db.json --port 5000`

## Key Functionalities

### Homepage
- Displays a hero section and a preview of job postings.
- Conditional rendering to limit job postings to three.

### Job Listings
- View all job postings on a separate page.
- Single job view with detailed description fetched using `useParams`.

### Add Job
- A form to create a new job listing.
- Submits data using a POST request to the JSON server.

### Edit Job
- Pre-filled form to edit existing job details.
- Updates data using a PUT request.

### Delete Job
- Removes a job posting using a DELETE request.
- Provides confirmation feedback with React Toastify.

## Deployment

1. Build the application for production:
   ```bash
   npm run build
   ```
2. Serve the built assets using a static file server or host them on platforms like Vercel or Netlify.

## License

This project is licensed under the MIT License.

---

Feel free to contribute or fork the repository to extend its features. Enjoy building with React!
