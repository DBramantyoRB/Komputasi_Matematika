

n = input('Masukkan batas deret (n): '); 
jumlah = 0; 
angka = 1; 

while angka <= n
    jumlah = jumlah + angka; 
    angka = angka + 1; 
end

fprintf('Jumlah deret dari 1 hingga %d adalah: %d\n', n, jumlah);