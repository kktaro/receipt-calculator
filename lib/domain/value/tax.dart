enum Tax {
  nomal('通常', 0.1),
  reduced('軽減税率', 0.08),
  ;

  const Tax(this.displayName, this.rate);
  final String displayName;
  final double rate;
}
