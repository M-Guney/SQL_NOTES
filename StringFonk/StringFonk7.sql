SELECT LEFT(NAME_,1) BASHARF,COUNT(SUBSTRING(NAME_,1,1))SAYI FROM LAB07
GROUP BY LEFT(NAME_,1)
ORDER BY 1
--> LEFT �le soldan ba�layarak ka� karakter getirmek istedi�imizi belirtiriz
--> Substring ise ba�lang�� ve biti� indisleri verilerek arada kalan de�erleri getirir