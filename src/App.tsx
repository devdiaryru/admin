import './App.css'
import { Routes, Route } from 'react-router-dom'
import { MainPage } from './page/MainPage'
import { AdminPage } from './page/AdminPage'

function App() {
	return (
		<>
			<Routes>
				<Route>
					<Route path={'/'} element={<MainPage />} />
					<Route path={'/admin'} element={<AdminPage />} />
				</Route>
			</Routes>
		</>
	)
}

export default App
