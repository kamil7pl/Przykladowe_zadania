<?php
//Zrobić logowanie
require_once("polaczenieBaza.php");
class zapytanieBaza extends polaczenieBaza{
	public $uzytkownik_logowanie;
	public $uzytkownicy=array("Kamil","Agata","Piotrek");//W szczególności zalogowany użytkownik.
	public $rozmowy=array();
		public function __construct(){
			parent::__construct();
			$this->uzytkownik_logowanie="Kamil";//$_SESSION['login']
			}
		public function wysylanie(){
			if(isset($_GET['odbiorca']) &&  in_array($_GET['odbiorca'], $this->uzytkownicy) && isset($_GET['tresc']) && !empty($_GET['tresc'])){
			$odbiorca=filter_var($_GET['odbiorca'], FILTER_SANITIZE_STRING);
			$tresc=filter_var($_GET['tresc'], FILTER_SANITIZE_STRING);
			$this->con->query("insert into wiadomosci values(null,'".$this->uzytkownik_logowanie."','".$odbiorca."','".$tresc."')");
			}
			//$this->con->close();
			
		}
		
		
		public function odczytBaza(){
			if(isset($_GET['rozmowca']) &&  in_array($_GET['rozmowca'], $this->uzytkownicy)){
			$rozmowca=filter_var($_GET['rozmowca'], FILTER_SANITIZE_STRING);
			$wynik=$this->con->query("select Nadawca, Odbiorca, Tresc from wiadomosci where ((Nadawca='".$rozmowca."' and Odbiorca='".$this->uzytkownik_logowanie."') or (Nadawca='".$this->uzytkownik_logowanie."' and Odbiorca='".$rozmowca."') );");
			while($row=$wynik->fetch_assoc()){
				array_push($this->rozmowy,$row);
			}//while
			}
			$this->con->close();//destruktor
			
		}
		
		
		
}


?>