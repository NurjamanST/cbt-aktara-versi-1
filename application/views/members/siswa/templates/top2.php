<div class="info-box bg-transparent shadow-none">
    <img class="avatar" src="<?= base_url() ?>" width="120" height="120">
    <div class="info-box-content">

    </div>
</div>

<script>
    $(`.avatar`).each(function () {
        $(this).on("error", function () {
            var src = $(this).attr('src').replace('profiles', 'foto_siswa');
            $(this).attr("src", src);
            $(this).on("error", function () {
                $(this).attr("src", base_url + 'assets/img/siswa.png');
            });

        });
    });
</script>
