SELECT LEFT(NAME_,1) BASHARF,COUNT(SUBSTRING(NAME_,1,1))SAYI FROM LAB07
GROUP BY LEFT(NAME_,1)
ORDER BY 1
--> LEFT Ýle soldan baþlayarak kaç karakter getirmek istediðimizi belirtiriz
--> Substring ise baþlangýç ve bitiþ indisleri verilerek arada kalan deðerleri getirir