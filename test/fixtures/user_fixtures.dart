import 'package:kripton/api/request/login_request.dart';
import 'package:kripton/constants.dart';
import 'package:kripton/api/model/user_data.dart';

class UserFixtures {
  static getUser({required LoginRequest request}) {
    if (request.username == '111' && request.password == '111') return UserFixtures.connectedToOrderService;
    if (request.username == '222' && request.password == '222') return UserFixtures.disconnectedFromOrderService;
    return null;
  }

  static const connectedToOrderServiceUserId = 1;
  static const disconnectedFromOrderServiceUserId = 2;
  static const user116UserId = 116;
  static const user120UserId = 120;

  static final disconnectedFromOrderService = UserData(
    id: disconnectedFromOrderServiceUserId,
    name: 'Jorge',
    surname: 'Arindia',
    email: 'jorge.arindia@urbano.com.ec',
    phone: '0999904044',
    rating: 5,
    available: OrderServiceStatus.noConnected.index,
  );

  static final connectedToOrderService = UserData(
    id: connectedToOrderServiceUserId,
    name: 'Damian',
    surname: 'Navarrete',
    email: 'damian.navarrete@urbano.com.ec',
    phone: '093876949',
    rating: 3,
    available: OrderServiceStatus.noConnected.index,
  );

  static final user116 = UserData(
    id: 116,
    name: 'Edison',
    surname: 'Espinoza',
    email: 'edison.espinoza@urbano.com.ec',
    phone: '093025861',
    rating: 1,
    available: OrderServiceStatus.noConnected.index,
  );
  static final user120 = UserData(
    id: 120,
    name: 'Jadira',
    surname: 'Achig',
    email: 'jadira.achig@urbano.com.ec',
    phone: '0998487473',
    rating: 4,
    available: OrderServiceStatus.connected.index,
  );
}
