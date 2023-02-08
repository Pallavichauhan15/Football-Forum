<!doctype html>
<html lang="en">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css"
        integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">

    <title>Welcome to FIFA Q/A Forum</title>
</head>
<style>
#home {
    display: flex;
    flex-direction: column;
    padding: 3px 200px;
    justify-content: center;
    height: 644px;
    align-items: center;
}

.hprimary {
    font-size: 3.8rem;
    padding: 12px;
    font-family: 'Bree Serif', serif;
}

.bton {
    padding: 6px 20px;
    border: 2px solid white;
    background-color: brown;
    color: white;
    margin: 17px;
    font-size: 1.5rem;
    border-radius: 10px;
    cursor: pointer;

}
</style>

<body>
    <?php include 'partials/_dbconnect.php';?>
    <?php include 'partials/_header.php';?>

    <section id="home">
        <h1 class="hprimary">Welcome to FIFA Q/A Forum</h1>
        <p>The Fédération internationale de football association (FIFA (/ˈfiːfə/; French for International Association
            Football Federation) is the international governing body of association football, beach soccer, and
            futsal. It was founded in 1904to oversee international competition among the national associations of
            Belgium, Denmark, France, Germany, the Netherlands, Spain, Sweden and Switzerland. Headquartered in Zürich,
            Switzerland, its membership now comprises 211 national associations. These national associations must each
            also be members of one of the six regional confederations into which the world is divided: CAF (Africa), AFC
            (Asia and Australia), UEFA (Europe), CONCACAF (North & Central America and the Caribbean), OFC (Oceania) and
            CONMEBOL (South America).</p>
        <p>FIFA outlines a number of objectives in the organizational Statutes, including growing association football
            internationally, providing efforts to ensure it is accessible to everyone, and advocating for integrity and
            fair play.[5] It is responsible for the organization and promotion of association football's major
            international tournaments, notably the World Cup which commenced in 1930 and the Women's World Cup which
            commenced in 1991. Although FIFA does not solely set the laws of the game, that being the responsibility of
            the International Football Association Board of which FIFA is a member, it applies and enforces the rules
            across all FIFA competitions.[6] All FIFA tournaments generate revenue from sponsorship; in 2018, FIFA had
            revenues of over US $4.6 billion, ending the 2015–2018 cycle with a net positive of US$1.2 billion, and had
            cash reserves of over US$2.7 billion. </p>

        
    </section>

    <?php include 'partials/_footer.php';?>
    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
        integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous">
    </script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
        integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous">
    </script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"
        integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous">
    </script>
</body>

</html>