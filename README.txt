DISSECTION OF THE YENLO USE CASE

What is the premise of the problem?

Build an API for a stock management system for a company that has both a web- and brick and mortar store. With the following requirements:

- The current stock levels need to be stored in a persistent data store.
  o Configuring data persistence is done through the Data Analytics Server layer

- Stock can be either in storage or in the store.

- Operations that change anything in the system need to be secured and only available to store managers.
  o Levels of Authorization are needed

What we are looking for is an API that can handle the following interactions, per interaction a basic message format will be specified on the next page.
- Update specific products stock for sales or when receiving stock (secure)
- Set specific stock level of (new or existing) product, for example after a stock check (secure)
- Get stock level (all or specific items)

Optional:
- Create a (simple) UI which shows the stock levels of products and allows to update the stock level of a product.
