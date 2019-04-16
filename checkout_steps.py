from robot.utils.asserts import assert_equal

checkout_price = 0
price_mapping = {}


def the_price_of_a_is_c(item, selling_price):
    price_mapping[item] = int(selling_price)
    print(price_mapping)


def i_checkout(purchase_quantity, item):
    global checkout_price
    checkout_price += price_mapping[item] * int(purchase_quantity)


def the_total_price_should_be(expected_total_price):
    assert_equal(checkout_price, int(expected_total_price), "Price not match")


def reset_variable():
    global checkout_price
    checkout_price = 0
