defmodule Orders do

  def calc_total(order, nil) do
    Dict.put(order, :total_amount,  order[:net_amount])
  end

  def calc_total(order, tax_rate) do
    tax = order[:net_amount] * tax_rate
    total = order[:net_amount]+tax
    Dict.put(order, :total_amount, total)
  end

  def calc_orders(orders, tax_rates) do
    orders |> Enum.map(&calc_total(&1, tax_rates[&1[:ship_to]]))
  end
end
