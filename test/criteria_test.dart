library corsac_dal.tests.criteria;

import 'package:corsac_dal/corsac_dal.dart';
import 'package:test/test.dart';

void main() {
  group('Criteria:', () {
    test('it builds conditions', () async {
      var criteria = new Criteria<User>();
      criteria.where((u) => u.id == 1);
      expect(criteria.conditions, isNotEmpty);
      expect(criteria.conditions, hasLength(1));
      Condition c = criteria.conditions.first;
      expect(c, new isInstanceOf<Condition>());
      expect(c.key, equals('id'));
      expect(c.value, equals(1));
      expect(c.predicate, equals(Condition.EQ));
    });
  });
}

class User {
  final int id;

  User(this.id);
}
