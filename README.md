## Counter Cache

<p>
    Counter cache ini digunakan ketika kita membuat thread kita bisa menghitung berapa jumlah post (comment) pada thread tersebut.
<p>
<p>
    Di kode sebelumnya kita sudah melakukan query penghitungan post dengan memanfaatkan kode 
    <span style="font-weight: bold; font-style: italic">count</span>
    seperti ini
    <code>
        t.forum_post.count
    </code>
    di mana t adalah query untuk thread.
</p>
<p>
    Hal ini tentunya kurang efisien karena setiap kali kita mengambil thread maka
    juga akan melakukan query untuk melakukan count terhadap post.
</p>
<p>
    Untuk itulah kita bisa memanfaatkan fitur di Rails yaitu 
    <span style="font-weight: bold">counter cache</span>. <br />
    Dengan adanya counter cache ini maka di saat ada post baru maupun
    post yang dihapus akan menambah ataupun mengurangi counter secara otomatis.
</p>
<p>
    Untuk referensi bisa di <a href="https://thoughtbot.com/blog/what-is-counter-cache">sini</a>
</p>
