import 'package:kripton/constants.dart';
import 'package:kripton/api/model/reason_data.dart';

class ReasonFixtures {
  static getAll() {
    return [
      noPickUpCanceledOrder,
      noPickUpClosedStore,
    ];
  }

  static const canceledOrderId = 1;
  static const closedStoreId = 2;

  static final noPickUpCanceledOrder = ReasonData(
    id: canceledOrderId,
    name: 'Cliente anulo pedido',
    type: ReasonType.noPickUp.index,
    orderType: OrderType.general.index,
  );
  static final noPickUpClosedStore = ReasonData(
    id: closedStoreId,
    name: 'Establecimiento cerrado',
    type: ReasonType.noPickUp.index,
    orderType: OrderType.general.index,
  );
}
