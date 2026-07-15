export default function Home() {
  return (
    <main className="min-h-screen flex items-center justify-center bg-slate-100">
      <div className="bg-white shadow-xl rounded-xl p-10 text-center">
        <h1 className="text-5xl font-bold text-blue-700">
          AWS Amplify Demo
        </h1>

        <p className="mt-5 text-gray-600 text-lg">
          Successfully deployed using Terraform 🚀
        </p>

        <div className="mt-8">
          <button className="bg-blue-600 hover:bg-blue-700 text-white px-6 py-3 rounded-lg">
            Deployment Successful
          </button>
        </div>
      </div>
    </main>
  );
}