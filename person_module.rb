module Person
# IN HERE WOULD BE TRAITS THAT ALL THREE CLASSES HAVE IN COMMON, SUCH AS NAME, AGE, OFFER_HIGH_FIVE METHOD AND MAYBE SET PHASE METHOD.
  @age = options.fetch(:age, 0)
  @name = options.fetch(:name, "")

  def offer_high_five
    "High five!"
  end

end