export default function LSJPWellnessSite() { return ( <main className="min-h-screen bg-white text-gray-800 p-6"> <header className="text-center mb-12"> <h1 className="text-4xl font-bold mb-2">L.S.J.P.</h1> <p className="text-xl italic text-gray-600">Global wellness sourcing</p> </header>

<section className="grid md:grid-cols-2 gap-8 mb-12">
    <ProductCard 
      title="Natural Cork Yoga Mat"
      image="https://images.unsplash.com/photo-1583454110551-21d5b82d789f"
      description="Eco-friendly, non-slip cork yoga mat perfect for hot yoga."
      origin="Available exclusively via L.S.J.P."
      priceRange="$3 - $5 (FOB)"
    />

    <ProductCard 
      title="Cork Yoga Block"
      image="https://images.unsplash.com/photo-1599058917212-bc393f7f96b6"
      description="Durable cork block to support balance and flexibility."
      origin="Available exclusively via L.S.J.P."
      priceRange="$1 - $2 (FOB)"
    />

    <ProductCard 
      title="Cotton Yoga Strap"
      image="https://images.unsplash.com/photo-1621169626433-c98646d1eeb9"
      description="Adjustable cotton strap to deepen stretches."
      origin="Available exclusively via L.S.J.P."
      priceRange="$0.5 - $1 (FOB)"
    />

    <ProductCard 
      title="Essential Oil Pack (3x10ml)"
      image="https://images.unsplash.com/photo-1599059743740-8107ef7488e4"
      description="Lavender, peppermint and eucalyptus essential oils for meditation."
      origin="Available exclusively via L.S.J.P."
      priceRange="$2 - $3 (FOB)"
    />

    <ProductCard 
      title="Aromatic Soy Candles (Set of 3)"
      image="https://images.unsplash.com/photo-1601057271453-6e6aeb9a8d12"
      description="Hand-poured candles for a relaxing ambiance."
      origin="Available exclusively via L.S.J.P."
      priceRange="$3 - $4 (FOB)"
    />
  </section>

  <section className="max-w-xl mx-auto mb-12">
    <h2 className="text-2xl font-bold mb-4 text-center">Contact Us</h2>
    <form className="grid gap-4">
      <input type="text" placeholder="Your Name" className="p-2 border rounded" required />
      <input type="email" placeholder="Your Email" className="p-2 border rounded" required />
      <textarea placeholder="Your Message" className="p-2 border rounded h-32" required></textarea>
      <button type="submit" className="bg-black text-white py-2 px-4 rounded hover:bg-gray-800">Send</button>
    </form>
  </section>

  <footer className="text-center text-sm text-gray-500">
    Contact us: [Add your email] • [Phone] • [LinkedIn or Website]
  </footer>
</main>

) }

function ProductCard({ title, image, description, origin, priceRange }) { return ( <div className="border rounded-2xl shadow-md p-4"> <img src={image} alt={title} className="rounded-xl w-full h-48 object-cover mb-4" /> <h3 className="text-xl font-semibold mb-1">{title}</h3> <p className="text-gray-600 mb-1">{description}</p> <p className="text-sm text-gray-500">{origin}</p> <p className="text-sm text-gray-700 font-medium">Price: {priceRange}</p> </div> ); }

