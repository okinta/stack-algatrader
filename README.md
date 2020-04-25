# README

Runs an algorithmic trader as an Okinta stack.

## What is an Okinta Stack?

An Okinta stack is a deployable unit for Alga that runs within Okinta's infrastructure.
Stacks describe all necessary information to deploy a service.

For more information about Alga, refer to the [alga-infra repository][1].

[1]: https://github.com/okinta/alga-infra

## What is this Stack?

This stack runs algorithms against a series of stock symbols to
automatically execute trades with the intent to produce a profit.

## Dependencies

This stack is dependent on the following:

1. [vault stack][1]: To order to retrieve configuration
2. [ibgateway stack][2]: To send orders to the market.
3. IQFeed: To retrieve data from.

[1]: https://github.com/okinta/stack-vault
[2]: https://github.com/okinta/stack-ibgateway
