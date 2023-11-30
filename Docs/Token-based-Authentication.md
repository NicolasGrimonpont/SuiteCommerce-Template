# Create an integration record.

Go to Setup > Integration > Integration Management > Manage Integrations > New

1. In the Name field, enter a name for the integration record.
2. In the State field, select Enabled.
3. Check the Token-Based Authentication box.
4. Check the TBA: Authorization Flow box.
5. In the Callback URL field, enter: http://localhost:7777/tba.
6. Clear the Authorization Code Grant box.
7. Check the User Credentials box.
8. Save the integration. Be sure to save the consumer key/secret before closing the page.
9. Copy and paste the consumer key/secret in the .env file.

More information:
[Netsuite Help Center](https://5346778.app.netsuite.com/app/help/helpcenter.nl?fid=bridgehead_4249032125.html)