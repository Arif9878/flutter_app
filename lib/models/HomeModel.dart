class CumulativeCase {
  int meninggal;
  int sembuh;
  int perawatan;
  int jumlahKasus;

  CumulativeCase({
    this.meninggal,
    this.sembuh,
    this.perawatan,
    this.jumlahKasus
  });

  factory CumulativeCase.fromJson(Map<String, dynamic> json) => CumulativeCase(
    meninggal: json["meninggal"],
    sembuh: json["sembuh"],
    perawatan: json["perawatan"],
    jumlahKasus: json["jumlahKasus"],
  );

  Map<String, dynamic> toJson() => {
    "meninggal": meninggal,
    "sembuh": sembuh,
    "perawatan": perawatan,
    "jumlahKasus": jumlahKasus
  };
}
