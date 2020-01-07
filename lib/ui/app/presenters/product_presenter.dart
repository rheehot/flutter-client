import 'package:invoiceninja_flutter/data/models/models.dart';
import 'package:invoiceninja_flutter/ui/app/presenters/entity_presenter.dart';
import 'package:invoiceninja_flutter/utils/formatting.dart';

class ProductPresenter extends EntityPresenter {
  @override
  String getField(String field) {
    final product = entity as ProductEntity;

    switch (field) {
      case ProductFields.productKey:
        return product.productKey;
      case ProductFields.cost:
        return formatNumber(product.cost, context,
            formatNumberType: FormatNumberType.money);
      case ProductFields.price:
        return formatNumber(product.price, context,
            formatNumberType: FormatNumberType.money);
      case ProductFields.quantity:
        return formatNumber(product.quantity, context,
            formatNumberType: FormatNumberType.double);
    }

    return super.getField(field);
  }
}