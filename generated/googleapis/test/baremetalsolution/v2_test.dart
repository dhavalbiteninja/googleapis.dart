// ignore_for_file: camel_case_types
// ignore_for_file: cascade_invocations
// ignore_for_file: comment_references
// ignore_for_file: file_names
// ignore_for_file: library_names
// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: prefer_const_declarations
// ignore_for_file: prefer_expression_function_bodies
// ignore_for_file: prefer_final_locals
// ignore_for_file: prefer_interpolation_to_compose_strings
// ignore_for_file: unnecessary_brace_in_string_interps
// ignore_for_file: unnecessary_cast
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: unnecessary_string_interpolations
// ignore_for_file: unused_local_variable

import 'dart:async' as async;
import 'dart:convert' as convert;
import 'dart:core' as core;

import 'package:googleapis/baremetalsolution/v2.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.int buildCounterAllowedClient = 0;
api.AllowedClient buildAllowedClient() {
  final o = api.AllowedClient();
  buildCounterAllowedClient++;
  if (buildCounterAllowedClient < 3) {
    o.allowDev = true;
    o.allowSuid = true;
    o.allowedClientsCidr = 'foo';
    o.mountPermissions = 'foo';
    o.network = 'foo';
    o.noRootSquash = true;
    o.shareIp = 'foo';
  }
  buildCounterAllowedClient--;
  return o;
}

void checkAllowedClient(api.AllowedClient o) {
  buildCounterAllowedClient++;
  if (buildCounterAllowedClient < 3) {
    unittest.expect(o.allowDev!, unittest.isTrue);
    unittest.expect(o.allowSuid!, unittest.isTrue);
    unittest.expect(
      o.allowedClientsCidr!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.mountPermissions!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.network!,
      unittest.equals('foo'),
    );
    unittest.expect(o.noRootSquash!, unittest.isTrue);
    unittest.expect(
      o.shareIp!,
      unittest.equals('foo'),
    );
  }
  buildCounterAllowedClient--;
}

core.int buildCounterDetachLunRequest = 0;
api.DetachLunRequest buildDetachLunRequest() {
  final o = api.DetachLunRequest();
  buildCounterDetachLunRequest++;
  if (buildCounterDetachLunRequest < 3) {
    o.lun = 'foo';
  }
  buildCounterDetachLunRequest--;
  return o;
}

void checkDetachLunRequest(api.DetachLunRequest o) {
  buildCounterDetachLunRequest++;
  if (buildCounterDetachLunRequest < 3) {
    unittest.expect(
      o.lun!,
      unittest.equals('foo'),
    );
  }
  buildCounterDetachLunRequest--;
}

core.List<api.OSImage> buildUnnamed0() => [
      buildOSImage(),
      buildOSImage(),
    ];

void checkUnnamed0(core.List<api.OSImage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOSImage(o[0]);
  checkOSImage(o[1]);
}

core.int buildCounterFetchInstanceProvisioningSettingsResponse = 0;
api.FetchInstanceProvisioningSettingsResponse
    buildFetchInstanceProvisioningSettingsResponse() {
  final o = api.FetchInstanceProvisioningSettingsResponse();
  buildCounterFetchInstanceProvisioningSettingsResponse++;
  if (buildCounterFetchInstanceProvisioningSettingsResponse < 3) {
    o.images = buildUnnamed0();
  }
  buildCounterFetchInstanceProvisioningSettingsResponse--;
  return o;
}

void checkFetchInstanceProvisioningSettingsResponse(
    api.FetchInstanceProvisioningSettingsResponse o) {
  buildCounterFetchInstanceProvisioningSettingsResponse++;
  if (buildCounterFetchInstanceProvisioningSettingsResponse < 3) {
    checkUnnamed0(o.images!);
  }
  buildCounterFetchInstanceProvisioningSettingsResponse--;
}

core.Map<core.String, core.String> buildUnnamed1() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed1(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o['x']!,
    unittest.equals('foo'),
  );
  unittest.expect(
    o['y']!,
    unittest.equals('foo'),
  );
}

core.List<api.Lun> buildUnnamed2() => [
      buildLun(),
      buildLun(),
    ];

void checkUnnamed2(core.List<api.Lun> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLun(o[0]);
  checkLun(o[1]);
}

core.List<api.Network> buildUnnamed3() => [
      buildNetwork(),
      buildNetwork(),
    ];

void checkUnnamed3(core.List<api.Network> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkNetwork(o[0]);
  checkNetwork(o[1]);
}

core.int buildCounterInstance = 0;
api.Instance buildInstance() {
  final o = api.Instance();
  buildCounterInstance++;
  if (buildCounterInstance < 3) {
    o.createTime = 'foo';
    o.hyperthreadingEnabled = true;
    o.id = 'foo';
    o.interactiveSerialConsoleEnabled = true;
    o.labels = buildUnnamed1();
    o.luns = buildUnnamed2();
    o.machineType = 'foo';
    o.name = 'foo';
    o.networks = buildUnnamed3();
    o.osImage = 'foo';
    o.pod = 'foo';
    o.state = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterInstance--;
  return o;
}

void checkInstance(api.Instance o) {
  buildCounterInstance++;
  if (buildCounterInstance < 3) {
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    unittest.expect(o.hyperthreadingEnabled!, unittest.isTrue);
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    unittest.expect(o.interactiveSerialConsoleEnabled!, unittest.isTrue);
    checkUnnamed1(o.labels!);
    checkUnnamed2(o.luns!);
    unittest.expect(
      o.machineType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkUnnamed3(o.networks!);
    unittest.expect(
      o.osImage!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.pod!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.updateTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterInstance--;
}

core.int buildCounterInstanceConfig = 0;
api.InstanceConfig buildInstanceConfig() {
  final o = api.InstanceConfig();
  buildCounterInstanceConfig++;
  if (buildCounterInstanceConfig < 3) {
    o.accountNetworksEnabled = true;
    o.clientNetwork = buildNetworkAddress();
    o.hyperthreading = true;
    o.id = 'foo';
    o.instanceType = 'foo';
    o.name = 'foo';
    o.osImage = 'foo';
    o.privateNetwork = buildNetworkAddress();
    o.userNote = 'foo';
  }
  buildCounterInstanceConfig--;
  return o;
}

void checkInstanceConfig(api.InstanceConfig o) {
  buildCounterInstanceConfig++;
  if (buildCounterInstanceConfig < 3) {
    unittest.expect(o.accountNetworksEnabled!, unittest.isTrue);
    checkNetworkAddress(o.clientNetwork!);
    unittest.expect(o.hyperthreading!, unittest.isTrue);
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.instanceType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.osImage!,
      unittest.equals('foo'),
    );
    checkNetworkAddress(o.privateNetwork!);
    unittest.expect(
      o.userNote!,
      unittest.equals('foo'),
    );
  }
  buildCounterInstanceConfig--;
}

core.int buildCounterInstanceQuota = 0;
api.InstanceQuota buildInstanceQuota() {
  final o = api.InstanceQuota();
  buildCounterInstanceQuota++;
  if (buildCounterInstanceQuota < 3) {
    o.availableMachineCount = 42;
    o.instanceType = 'foo';
    o.location = 'foo';
    o.name = 'foo';
  }
  buildCounterInstanceQuota--;
  return o;
}

void checkInstanceQuota(api.InstanceQuota o) {
  buildCounterInstanceQuota++;
  if (buildCounterInstanceQuota < 3) {
    unittest.expect(
      o.availableMachineCount!,
      unittest.equals(42),
    );
    unittest.expect(
      o.instanceType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.location!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
  }
  buildCounterInstanceQuota--;
}

core.int buildCounterIntakeVlanAttachment = 0;
api.IntakeVlanAttachment buildIntakeVlanAttachment() {
  final o = api.IntakeVlanAttachment();
  buildCounterIntakeVlanAttachment++;
  if (buildCounterIntakeVlanAttachment < 3) {
    o.id = 'foo';
    o.pairingKey = 'foo';
  }
  buildCounterIntakeVlanAttachment--;
  return o;
}

void checkIntakeVlanAttachment(api.IntakeVlanAttachment o) {
  buildCounterIntakeVlanAttachment++;
  if (buildCounterIntakeVlanAttachment < 3) {
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.pairingKey!,
      unittest.equals('foo'),
    );
  }
  buildCounterIntakeVlanAttachment--;
}

core.List<api.Instance> buildUnnamed4() => [
      buildInstance(),
      buildInstance(),
    ];

void checkUnnamed4(core.List<api.Instance> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkInstance(o[0]);
  checkInstance(o[1]);
}

core.List<core.String> buildUnnamed5() => [
      'foo',
      'foo',
    ];

void checkUnnamed5(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o[0],
    unittest.equals('foo'),
  );
  unittest.expect(
    o[1],
    unittest.equals('foo'),
  );
}

core.int buildCounterListInstancesResponse = 0;
api.ListInstancesResponse buildListInstancesResponse() {
  final o = api.ListInstancesResponse();
  buildCounterListInstancesResponse++;
  if (buildCounterListInstancesResponse < 3) {
    o.instances = buildUnnamed4();
    o.nextPageToken = 'foo';
    o.unreachable = buildUnnamed5();
  }
  buildCounterListInstancesResponse--;
  return o;
}

void checkListInstancesResponse(api.ListInstancesResponse o) {
  buildCounterListInstancesResponse++;
  if (buildCounterListInstancesResponse < 3) {
    checkUnnamed4(o.instances!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed5(o.unreachable!);
  }
  buildCounterListInstancesResponse--;
}

core.List<api.Location> buildUnnamed6() => [
      buildLocation(),
      buildLocation(),
    ];

void checkUnnamed6(core.List<api.Location> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLocation(o[0]);
  checkLocation(o[1]);
}

core.int buildCounterListLocationsResponse = 0;
api.ListLocationsResponse buildListLocationsResponse() {
  final o = api.ListLocationsResponse();
  buildCounterListLocationsResponse++;
  if (buildCounterListLocationsResponse < 3) {
    o.locations = buildUnnamed6();
    o.nextPageToken = 'foo';
  }
  buildCounterListLocationsResponse--;
  return o;
}

void checkListLocationsResponse(api.ListLocationsResponse o) {
  buildCounterListLocationsResponse++;
  if (buildCounterListLocationsResponse < 3) {
    checkUnnamed6(o.locations!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterListLocationsResponse--;
}

core.List<api.Lun> buildUnnamed7() => [
      buildLun(),
      buildLun(),
    ];

void checkUnnamed7(core.List<api.Lun> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLun(o[0]);
  checkLun(o[1]);
}

core.List<core.String> buildUnnamed8() => [
      'foo',
      'foo',
    ];

void checkUnnamed8(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o[0],
    unittest.equals('foo'),
  );
  unittest.expect(
    o[1],
    unittest.equals('foo'),
  );
}

core.int buildCounterListLunsResponse = 0;
api.ListLunsResponse buildListLunsResponse() {
  final o = api.ListLunsResponse();
  buildCounterListLunsResponse++;
  if (buildCounterListLunsResponse < 3) {
    o.luns = buildUnnamed7();
    o.nextPageToken = 'foo';
    o.unreachable = buildUnnamed8();
  }
  buildCounterListLunsResponse--;
  return o;
}

void checkListLunsResponse(api.ListLunsResponse o) {
  buildCounterListLunsResponse++;
  if (buildCounterListLunsResponse < 3) {
    checkUnnamed7(o.luns!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed8(o.unreachable!);
  }
  buildCounterListLunsResponse--;
}

core.List<api.NetworkUsage> buildUnnamed9() => [
      buildNetworkUsage(),
      buildNetworkUsage(),
    ];

void checkUnnamed9(core.List<api.NetworkUsage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkNetworkUsage(o[0]);
  checkNetworkUsage(o[1]);
}

core.int buildCounterListNetworkUsageResponse = 0;
api.ListNetworkUsageResponse buildListNetworkUsageResponse() {
  final o = api.ListNetworkUsageResponse();
  buildCounterListNetworkUsageResponse++;
  if (buildCounterListNetworkUsageResponse < 3) {
    o.networks = buildUnnamed9();
  }
  buildCounterListNetworkUsageResponse--;
  return o;
}

void checkListNetworkUsageResponse(api.ListNetworkUsageResponse o) {
  buildCounterListNetworkUsageResponse++;
  if (buildCounterListNetworkUsageResponse < 3) {
    checkUnnamed9(o.networks!);
  }
  buildCounterListNetworkUsageResponse--;
}

core.List<api.Network> buildUnnamed10() => [
      buildNetwork(),
      buildNetwork(),
    ];

void checkUnnamed10(core.List<api.Network> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkNetwork(o[0]);
  checkNetwork(o[1]);
}

core.List<core.String> buildUnnamed11() => [
      'foo',
      'foo',
    ];

void checkUnnamed11(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o[0],
    unittest.equals('foo'),
  );
  unittest.expect(
    o[1],
    unittest.equals('foo'),
  );
}

core.int buildCounterListNetworksResponse = 0;
api.ListNetworksResponse buildListNetworksResponse() {
  final o = api.ListNetworksResponse();
  buildCounterListNetworksResponse++;
  if (buildCounterListNetworksResponse < 3) {
    o.networks = buildUnnamed10();
    o.nextPageToken = 'foo';
    o.unreachable = buildUnnamed11();
  }
  buildCounterListNetworksResponse--;
  return o;
}

void checkListNetworksResponse(api.ListNetworksResponse o) {
  buildCounterListNetworksResponse++;
  if (buildCounterListNetworksResponse < 3) {
    checkUnnamed10(o.networks!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed11(o.unreachable!);
  }
  buildCounterListNetworksResponse--;
}

core.List<api.NfsShare> buildUnnamed12() => [
      buildNfsShare(),
      buildNfsShare(),
    ];

void checkUnnamed12(core.List<api.NfsShare> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkNfsShare(o[0]);
  checkNfsShare(o[1]);
}

core.List<core.String> buildUnnamed13() => [
      'foo',
      'foo',
    ];

void checkUnnamed13(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o[0],
    unittest.equals('foo'),
  );
  unittest.expect(
    o[1],
    unittest.equals('foo'),
  );
}

core.int buildCounterListNfsSharesResponse = 0;
api.ListNfsSharesResponse buildListNfsSharesResponse() {
  final o = api.ListNfsSharesResponse();
  buildCounterListNfsSharesResponse++;
  if (buildCounterListNfsSharesResponse < 3) {
    o.nextPageToken = 'foo';
    o.nfsShares = buildUnnamed12();
    o.unreachable = buildUnnamed13();
  }
  buildCounterListNfsSharesResponse--;
  return o;
}

void checkListNfsSharesResponse(api.ListNfsSharesResponse o) {
  buildCounterListNfsSharesResponse++;
  if (buildCounterListNfsSharesResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed12(o.nfsShares!);
    checkUnnamed13(o.unreachable!);
  }
  buildCounterListNfsSharesResponse--;
}

core.List<api.ProvisioningQuota> buildUnnamed14() => [
      buildProvisioningQuota(),
      buildProvisioningQuota(),
    ];

void checkUnnamed14(core.List<api.ProvisioningQuota> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkProvisioningQuota(o[0]);
  checkProvisioningQuota(o[1]);
}

core.int buildCounterListProvisioningQuotasResponse = 0;
api.ListProvisioningQuotasResponse buildListProvisioningQuotasResponse() {
  final o = api.ListProvisioningQuotasResponse();
  buildCounterListProvisioningQuotasResponse++;
  if (buildCounterListProvisioningQuotasResponse < 3) {
    o.nextPageToken = 'foo';
    o.provisioningQuotas = buildUnnamed14();
  }
  buildCounterListProvisioningQuotasResponse--;
  return o;
}

void checkListProvisioningQuotasResponse(api.ListProvisioningQuotasResponse o) {
  buildCounterListProvisioningQuotasResponse++;
  if (buildCounterListProvisioningQuotasResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed14(o.provisioningQuotas!);
  }
  buildCounterListProvisioningQuotasResponse--;
}

core.List<core.String> buildUnnamed15() => [
      'foo',
      'foo',
    ];

void checkUnnamed15(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o[0],
    unittest.equals('foo'),
  );
  unittest.expect(
    o[1],
    unittest.equals('foo'),
  );
}

core.List<api.Volume> buildUnnamed16() => [
      buildVolume(),
      buildVolume(),
    ];

void checkUnnamed16(core.List<api.Volume> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkVolume(o[0]);
  checkVolume(o[1]);
}

core.int buildCounterListVolumesResponse = 0;
api.ListVolumesResponse buildListVolumesResponse() {
  final o = api.ListVolumesResponse();
  buildCounterListVolumesResponse++;
  if (buildCounterListVolumesResponse < 3) {
    o.nextPageToken = 'foo';
    o.unreachable = buildUnnamed15();
    o.volumes = buildUnnamed16();
  }
  buildCounterListVolumesResponse--;
  return o;
}

void checkListVolumesResponse(api.ListVolumesResponse o) {
  buildCounterListVolumesResponse++;
  if (buildCounterListVolumesResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed15(o.unreachable!);
    checkUnnamed16(o.volumes!);
  }
  buildCounterListVolumesResponse--;
}

core.Map<core.String, core.String> buildUnnamed17() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed17(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o['x']!,
    unittest.equals('foo'),
  );
  unittest.expect(
    o['y']!,
    unittest.equals('foo'),
  );
}

core.Map<core.String, core.Object?> buildUnnamed18() => {
      'x': {
        'list': [1, 2, 3],
        'bool': true,
        'string': 'foo'
      },
      'y': {
        'list': [1, 2, 3],
        'bool': true,
        'string': 'foo'
      },
    };

void checkUnnamed18(core.Map<core.String, core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted1 = (o['x']!) as core.Map;
  unittest.expect(casted1, unittest.hasLength(3));
  unittest.expect(
    casted1['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted1['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted1['string'],
    unittest.equals('foo'),
  );
  var casted2 = (o['y']!) as core.Map;
  unittest.expect(casted2, unittest.hasLength(3));
  unittest.expect(
    casted2['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted2['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted2['string'],
    unittest.equals('foo'),
  );
}

core.int buildCounterLocation = 0;
api.Location buildLocation() {
  final o = api.Location();
  buildCounterLocation++;
  if (buildCounterLocation < 3) {
    o.displayName = 'foo';
    o.labels = buildUnnamed17();
    o.locationId = 'foo';
    o.metadata = buildUnnamed18();
    o.name = 'foo';
  }
  buildCounterLocation--;
  return o;
}

void checkLocation(api.Location o) {
  buildCounterLocation++;
  if (buildCounterLocation < 3) {
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    checkUnnamed17(o.labels!);
    unittest.expect(
      o.locationId!,
      unittest.equals('foo'),
    );
    checkUnnamed18(o.metadata!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
  }
  buildCounterLocation--;
}

core.int buildCounterLogicalInterface = 0;
api.LogicalInterface buildLogicalInterface() {
  final o = api.LogicalInterface();
  buildCounterLogicalInterface++;
  if (buildCounterLogicalInterface < 3) {
    o.name = 'foo';
    o.required = true;
    o.type = 'foo';
  }
  buildCounterLogicalInterface--;
  return o;
}

void checkLogicalInterface(api.LogicalInterface o) {
  buildCounterLogicalInterface++;
  if (buildCounterLogicalInterface < 3) {
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(o.required!, unittest.isTrue);
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
  }
  buildCounterLogicalInterface--;
}

core.int buildCounterLun = 0;
api.Lun buildLun() {
  final o = api.Lun();
  buildCounterLun++;
  if (buildCounterLun < 3) {
    o.bootLun = true;
    o.id = 'foo';
    o.multiprotocolType = 'foo';
    o.name = 'foo';
    o.shareable = true;
    o.sizeGb = 'foo';
    o.state = 'foo';
    o.storageType = 'foo';
    o.storageVolume = 'foo';
    o.wwid = 'foo';
  }
  buildCounterLun--;
  return o;
}

void checkLun(api.Lun o) {
  buildCounterLun++;
  if (buildCounterLun < 3) {
    unittest.expect(o.bootLun!, unittest.isTrue);
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.multiprotocolType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(o.shareable!, unittest.isTrue);
    unittest.expect(
      o.sizeGb!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.storageType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.storageVolume!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.wwid!,
      unittest.equals('foo'),
    );
  }
  buildCounterLun--;
}

core.int buildCounterLunRange = 0;
api.LunRange buildLunRange() {
  final o = api.LunRange();
  buildCounterLunRange++;
  if (buildCounterLunRange < 3) {
    o.quantity = 42;
    o.sizeGb = 42;
  }
  buildCounterLunRange--;
  return o;
}

void checkLunRange(api.LunRange o) {
  buildCounterLunRange++;
  if (buildCounterLunRange < 3) {
    unittest.expect(
      o.quantity!,
      unittest.equals(42),
    );
    unittest.expect(
      o.sizeGb!,
      unittest.equals(42),
    );
  }
  buildCounterLunRange--;
}

core.Map<core.String, core.String> buildUnnamed19() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed19(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o['x']!,
    unittest.equals('foo'),
  );
  unittest.expect(
    o['y']!,
    unittest.equals('foo'),
  );
}

core.List<core.String> buildUnnamed20() => [
      'foo',
      'foo',
    ];

void checkUnnamed20(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o[0],
    unittest.equals('foo'),
  );
  unittest.expect(
    o[1],
    unittest.equals('foo'),
  );
}

core.List<api.NetworkAddressReservation> buildUnnamed21() => [
      buildNetworkAddressReservation(),
      buildNetworkAddressReservation(),
    ];

void checkUnnamed21(core.List<api.NetworkAddressReservation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkNetworkAddressReservation(o[0]);
  checkNetworkAddressReservation(o[1]);
}

core.int buildCounterNetwork = 0;
api.Network buildNetwork() {
  final o = api.Network();
  buildCounterNetwork++;
  if (buildCounterNetwork < 3) {
    o.cidr = 'foo';
    o.id = 'foo';
    o.ipAddress = 'foo';
    o.labels = buildUnnamed19();
    o.macAddress = buildUnnamed20();
    o.name = 'foo';
    o.reservations = buildUnnamed21();
    o.servicesCidr = 'foo';
    o.state = 'foo';
    o.type = 'foo';
    o.vlanId = 'foo';
    o.vrf = buildVRF();
  }
  buildCounterNetwork--;
  return o;
}

void checkNetwork(api.Network o) {
  buildCounterNetwork++;
  if (buildCounterNetwork < 3) {
    unittest.expect(
      o.cidr!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.ipAddress!,
      unittest.equals('foo'),
    );
    checkUnnamed19(o.labels!);
    checkUnnamed20(o.macAddress!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkUnnamed21(o.reservations!);
    unittest.expect(
      o.servicesCidr!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.vlanId!,
      unittest.equals('foo'),
    );
    checkVRF(o.vrf!);
  }
  buildCounterNetwork--;
}

core.int buildCounterNetworkAddress = 0;
api.NetworkAddress buildNetworkAddress() {
  final o = api.NetworkAddress();
  buildCounterNetworkAddress++;
  if (buildCounterNetworkAddress < 3) {
    o.address = 'foo';
    o.existingNetworkId = 'foo';
    o.networkId = 'foo';
  }
  buildCounterNetworkAddress--;
  return o;
}

void checkNetworkAddress(api.NetworkAddress o) {
  buildCounterNetworkAddress++;
  if (buildCounterNetworkAddress < 3) {
    unittest.expect(
      o.address!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.existingNetworkId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.networkId!,
      unittest.equals('foo'),
    );
  }
  buildCounterNetworkAddress--;
}

core.int buildCounterNetworkAddressReservation = 0;
api.NetworkAddressReservation buildNetworkAddressReservation() {
  final o = api.NetworkAddressReservation();
  buildCounterNetworkAddressReservation++;
  if (buildCounterNetworkAddressReservation < 3) {
    o.endAddress = 'foo';
    o.note = 'foo';
    o.startAddress = 'foo';
  }
  buildCounterNetworkAddressReservation--;
  return o;
}

void checkNetworkAddressReservation(api.NetworkAddressReservation o) {
  buildCounterNetworkAddressReservation++;
  if (buildCounterNetworkAddressReservation < 3) {
    unittest.expect(
      o.endAddress!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.note!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.startAddress!,
      unittest.equals('foo'),
    );
  }
  buildCounterNetworkAddressReservation--;
}

core.List<api.IntakeVlanAttachment> buildUnnamed22() => [
      buildIntakeVlanAttachment(),
      buildIntakeVlanAttachment(),
    ];

void checkUnnamed22(core.List<api.IntakeVlanAttachment> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkIntakeVlanAttachment(o[0]);
  checkIntakeVlanAttachment(o[1]);
}

core.int buildCounterNetworkConfig = 0;
api.NetworkConfig buildNetworkConfig() {
  final o = api.NetworkConfig();
  buildCounterNetworkConfig++;
  if (buildCounterNetworkConfig < 3) {
    o.bandwidth = 'foo';
    o.cidr = 'foo';
    o.gcpService = 'foo';
    o.id = 'foo';
    o.name = 'foo';
    o.serviceCidr = 'foo';
    o.type = 'foo';
    o.userNote = 'foo';
    o.vlanAttachments = buildUnnamed22();
    o.vlanSameProject = true;
  }
  buildCounterNetworkConfig--;
  return o;
}

void checkNetworkConfig(api.NetworkConfig o) {
  buildCounterNetworkConfig++;
  if (buildCounterNetworkConfig < 3) {
    unittest.expect(
      o.bandwidth!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.cidr!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.gcpService!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.serviceCidr!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.userNote!,
      unittest.equals('foo'),
    );
    checkUnnamed22(o.vlanAttachments!);
    unittest.expect(o.vlanSameProject!, unittest.isTrue);
  }
  buildCounterNetworkConfig--;
}

core.List<core.String> buildUnnamed23() => [
      'foo',
      'foo',
    ];

void checkUnnamed23(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o[0],
    unittest.equals('foo'),
  );
  unittest.expect(
    o[1],
    unittest.equals('foo'),
  );
}

core.int buildCounterNetworkUsage = 0;
api.NetworkUsage buildNetworkUsage() {
  final o = api.NetworkUsage();
  buildCounterNetworkUsage++;
  if (buildCounterNetworkUsage < 3) {
    o.network = buildNetwork();
    o.usedIps = buildUnnamed23();
  }
  buildCounterNetworkUsage--;
  return o;
}

void checkNetworkUsage(api.NetworkUsage o) {
  buildCounterNetworkUsage++;
  if (buildCounterNetworkUsage < 3) {
    checkNetwork(o.network!);
    checkUnnamed23(o.usedIps!);
  }
  buildCounterNetworkUsage--;
}

core.int buildCounterNfsExport = 0;
api.NfsExport buildNfsExport() {
  final o = api.NfsExport();
  buildCounterNfsExport++;
  if (buildCounterNfsExport < 3) {
    o.allowDev = true;
    o.allowSuid = true;
    o.cidr = 'foo';
    o.machineId = 'foo';
    o.networkId = 'foo';
    o.noRootSquash = true;
    o.permissions = 'foo';
  }
  buildCounterNfsExport--;
  return o;
}

void checkNfsExport(api.NfsExport o) {
  buildCounterNfsExport++;
  if (buildCounterNfsExport < 3) {
    unittest.expect(o.allowDev!, unittest.isTrue);
    unittest.expect(o.allowSuid!, unittest.isTrue);
    unittest.expect(
      o.cidr!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.machineId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.networkId!,
      unittest.equals('foo'),
    );
    unittest.expect(o.noRootSquash!, unittest.isTrue);
    unittest.expect(
      o.permissions!,
      unittest.equals('foo'),
    );
  }
  buildCounterNfsExport--;
}

core.List<api.AllowedClient> buildUnnamed24() => [
      buildAllowedClient(),
      buildAllowedClient(),
    ];

void checkUnnamed24(core.List<api.AllowedClient> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAllowedClient(o[0]);
  checkAllowedClient(o[1]);
}

core.Map<core.String, core.String> buildUnnamed25() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed25(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o['x']!,
    unittest.equals('foo'),
  );
  unittest.expect(
    o['y']!,
    unittest.equals('foo'),
  );
}

core.int buildCounterNfsShare = 0;
api.NfsShare buildNfsShare() {
  final o = api.NfsShare();
  buildCounterNfsShare++;
  if (buildCounterNfsShare < 3) {
    o.allowedClients = buildUnnamed24();
    o.labels = buildUnnamed25();
    o.name = 'foo';
    o.nfsShareId = 'foo';
    o.state = 'foo';
    o.volume = 'foo';
  }
  buildCounterNfsShare--;
  return o;
}

void checkNfsShare(api.NfsShare o) {
  buildCounterNfsShare++;
  if (buildCounterNfsShare < 3) {
    checkUnnamed24(o.allowedClients!);
    checkUnnamed25(o.labels!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.nfsShareId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.volume!,
      unittest.equals('foo'),
    );
  }
  buildCounterNfsShare--;
}

core.List<core.String> buildUnnamed26() => [
      'foo',
      'foo',
    ];

void checkUnnamed26(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o[0],
    unittest.equals('foo'),
  );
  unittest.expect(
    o[1],
    unittest.equals('foo'),
  );
}

core.List<api.ServerNetworkTemplate> buildUnnamed27() => [
      buildServerNetworkTemplate(),
      buildServerNetworkTemplate(),
    ];

void checkUnnamed27(core.List<api.ServerNetworkTemplate> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkServerNetworkTemplate(o[0]);
  checkServerNetworkTemplate(o[1]);
}

core.int buildCounterOSImage = 0;
api.OSImage buildOSImage() {
  final o = api.OSImage();
  buildCounterOSImage++;
  if (buildCounterOSImage < 3) {
    o.applicableInstanceTypes = buildUnnamed26();
    o.code = 'foo';
    o.description = 'foo';
    o.name = 'foo';
    o.supportedNetworkTemplates = buildUnnamed27();
  }
  buildCounterOSImage--;
  return o;
}

void checkOSImage(api.OSImage o) {
  buildCounterOSImage++;
  if (buildCounterOSImage < 3) {
    checkUnnamed26(o.applicableInstanceTypes!);
    unittest.expect(
      o.code!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkUnnamed27(o.supportedNetworkTemplates!);
  }
  buildCounterOSImage--;
}

core.Map<core.String, core.Object?> buildUnnamed28() => {
      'x': {
        'list': [1, 2, 3],
        'bool': true,
        'string': 'foo'
      },
      'y': {
        'list': [1, 2, 3],
        'bool': true,
        'string': 'foo'
      },
    };

void checkUnnamed28(core.Map<core.String, core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted3 = (o['x']!) as core.Map;
  unittest.expect(casted3, unittest.hasLength(3));
  unittest.expect(
    casted3['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted3['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted3['string'],
    unittest.equals('foo'),
  );
  var casted4 = (o['y']!) as core.Map;
  unittest.expect(casted4, unittest.hasLength(3));
  unittest.expect(
    casted4['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted4['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted4['string'],
    unittest.equals('foo'),
  );
}

core.Map<core.String, core.Object?> buildUnnamed29() => {
      'x': {
        'list': [1, 2, 3],
        'bool': true,
        'string': 'foo'
      },
      'y': {
        'list': [1, 2, 3],
        'bool': true,
        'string': 'foo'
      },
    };

void checkUnnamed29(core.Map<core.String, core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted5 = (o['x']!) as core.Map;
  unittest.expect(casted5, unittest.hasLength(3));
  unittest.expect(
    casted5['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted5['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted5['string'],
    unittest.equals('foo'),
  );
  var casted6 = (o['y']!) as core.Map;
  unittest.expect(casted6, unittest.hasLength(3));
  unittest.expect(
    casted6['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted6['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted6['string'],
    unittest.equals('foo'),
  );
}

core.int buildCounterOperation = 0;
api.Operation buildOperation() {
  final o = api.Operation();
  buildCounterOperation++;
  if (buildCounterOperation < 3) {
    o.done = true;
    o.error = buildStatus();
    o.metadata = buildUnnamed28();
    o.name = 'foo';
    o.response = buildUnnamed29();
  }
  buildCounterOperation--;
  return o;
}

void checkOperation(api.Operation o) {
  buildCounterOperation++;
  if (buildCounterOperation < 3) {
    unittest.expect(o.done!, unittest.isTrue);
    checkStatus(o.error!);
    checkUnnamed28(o.metadata!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkUnnamed29(o.response!);
  }
  buildCounterOperation--;
}

core.List<api.InstanceConfig> buildUnnamed30() => [
      buildInstanceConfig(),
      buildInstanceConfig(),
    ];

void checkUnnamed30(core.List<api.InstanceConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkInstanceConfig(o[0]);
  checkInstanceConfig(o[1]);
}

core.List<api.NetworkConfig> buildUnnamed31() => [
      buildNetworkConfig(),
      buildNetworkConfig(),
    ];

void checkUnnamed31(core.List<api.NetworkConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkNetworkConfig(o[0]);
  checkNetworkConfig(o[1]);
}

core.List<api.VolumeConfig> buildUnnamed32() => [
      buildVolumeConfig(),
      buildVolumeConfig(),
    ];

void checkUnnamed32(core.List<api.VolumeConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkVolumeConfig(o[0]);
  checkVolumeConfig(o[1]);
}

core.int buildCounterProvisioningConfig = 0;
api.ProvisioningConfig buildProvisioningConfig() {
  final o = api.ProvisioningConfig();
  buildCounterProvisioningConfig++;
  if (buildCounterProvisioningConfig < 3) {
    o.cloudConsoleUri = 'foo';
    o.email = 'foo';
    o.handoverServiceAccount = 'foo';
    o.instances = buildUnnamed30();
    o.location = 'foo';
    o.name = 'foo';
    o.networks = buildUnnamed31();
    o.state = 'foo';
    o.ticketId = 'foo';
    o.updateTime = 'foo';
    o.volumes = buildUnnamed32();
  }
  buildCounterProvisioningConfig--;
  return o;
}

void checkProvisioningConfig(api.ProvisioningConfig o) {
  buildCounterProvisioningConfig++;
  if (buildCounterProvisioningConfig < 3) {
    unittest.expect(
      o.cloudConsoleUri!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.email!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.handoverServiceAccount!,
      unittest.equals('foo'),
    );
    checkUnnamed30(o.instances!);
    unittest.expect(
      o.location!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkUnnamed31(o.networks!);
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.ticketId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.updateTime!,
      unittest.equals('foo'),
    );
    checkUnnamed32(o.volumes!);
  }
  buildCounterProvisioningConfig--;
}

core.int buildCounterProvisioningQuota = 0;
api.ProvisioningQuota buildProvisioningQuota() {
  final o = api.ProvisioningQuota();
  buildCounterProvisioningQuota++;
  if (buildCounterProvisioningQuota < 3) {
    o.assetType = 'foo';
    o.availableCount = 42;
    o.gcpService = 'foo';
    o.instanceQuota = buildInstanceQuota();
    o.location = 'foo';
    o.name = 'foo';
    o.networkBandwidth = 'foo';
    o.serverCount = 'foo';
    o.storageGib = 'foo';
  }
  buildCounterProvisioningQuota--;
  return o;
}

void checkProvisioningQuota(api.ProvisioningQuota o) {
  buildCounterProvisioningQuota++;
  if (buildCounterProvisioningQuota < 3) {
    unittest.expect(
      o.assetType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.availableCount!,
      unittest.equals(42),
    );
    unittest.expect(
      o.gcpService!,
      unittest.equals('foo'),
    );
    checkInstanceQuota(o.instanceQuota!);
    unittest.expect(
      o.location!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.networkBandwidth!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.serverCount!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.storageGib!,
      unittest.equals('foo'),
    );
  }
  buildCounterProvisioningQuota--;
}

core.int buildCounterQosPolicy = 0;
api.QosPolicy buildQosPolicy() {
  final o = api.QosPolicy();
  buildCounterQosPolicy++;
  if (buildCounterQosPolicy < 3) {
    o.bandwidthGbps = 42.0;
  }
  buildCounterQosPolicy--;
  return o;
}

void checkQosPolicy(api.QosPolicy o) {
  buildCounterQosPolicy++;
  if (buildCounterQosPolicy < 3) {
    unittest.expect(
      o.bandwidthGbps!,
      unittest.equals(42.0),
    );
  }
  buildCounterQosPolicy--;
}

core.int buildCounterResetInstanceRequest = 0;
api.ResetInstanceRequest buildResetInstanceRequest() {
  final o = api.ResetInstanceRequest();
  buildCounterResetInstanceRequest++;
  if (buildCounterResetInstanceRequest < 3) {}
  buildCounterResetInstanceRequest--;
  return o;
}

void checkResetInstanceRequest(api.ResetInstanceRequest o) {
  buildCounterResetInstanceRequest++;
  if (buildCounterResetInstanceRequest < 3) {}
  buildCounterResetInstanceRequest--;
}

core.List<core.String> buildUnnamed33() => [
      'foo',
      'foo',
    ];

void checkUnnamed33(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o[0],
    unittest.equals('foo'),
  );
  unittest.expect(
    o[1],
    unittest.equals('foo'),
  );
}

core.List<api.LogicalInterface> buildUnnamed34() => [
      buildLogicalInterface(),
      buildLogicalInterface(),
    ];

void checkUnnamed34(core.List<api.LogicalInterface> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLogicalInterface(o[0]);
  checkLogicalInterface(o[1]);
}

core.int buildCounterServerNetworkTemplate = 0;
api.ServerNetworkTemplate buildServerNetworkTemplate() {
  final o = api.ServerNetworkTemplate();
  buildCounterServerNetworkTemplate++;
  if (buildCounterServerNetworkTemplate < 3) {
    o.applicableInstanceTypes = buildUnnamed33();
    o.logicalInterfaces = buildUnnamed34();
    o.name = 'foo';
  }
  buildCounterServerNetworkTemplate--;
  return o;
}

void checkServerNetworkTemplate(api.ServerNetworkTemplate o) {
  buildCounterServerNetworkTemplate++;
  if (buildCounterServerNetworkTemplate < 3) {
    checkUnnamed33(o.applicableInstanceTypes!);
    checkUnnamed34(o.logicalInterfaces!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
  }
  buildCounterServerNetworkTemplate--;
}

core.int buildCounterSnapshotReservationDetail = 0;
api.SnapshotReservationDetail buildSnapshotReservationDetail() {
  final o = api.SnapshotReservationDetail();
  buildCounterSnapshotReservationDetail++;
  if (buildCounterSnapshotReservationDetail < 3) {
    o.reservedSpaceGib = 'foo';
    o.reservedSpacePercent = 42;
    o.reservedSpaceRemainingGib = 'foo';
    o.reservedSpaceUsedPercent = 42;
  }
  buildCounterSnapshotReservationDetail--;
  return o;
}

void checkSnapshotReservationDetail(api.SnapshotReservationDetail o) {
  buildCounterSnapshotReservationDetail++;
  if (buildCounterSnapshotReservationDetail < 3) {
    unittest.expect(
      o.reservedSpaceGib!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.reservedSpacePercent!,
      unittest.equals(42),
    );
    unittest.expect(
      o.reservedSpaceRemainingGib!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.reservedSpaceUsedPercent!,
      unittest.equals(42),
    );
  }
  buildCounterSnapshotReservationDetail--;
}

core.int buildCounterStartInstanceRequest = 0;
api.StartInstanceRequest buildStartInstanceRequest() {
  final o = api.StartInstanceRequest();
  buildCounterStartInstanceRequest++;
  if (buildCounterStartInstanceRequest < 3) {}
  buildCounterStartInstanceRequest--;
  return o;
}

void checkStartInstanceRequest(api.StartInstanceRequest o) {
  buildCounterStartInstanceRequest++;
  if (buildCounterStartInstanceRequest < 3) {}
  buildCounterStartInstanceRequest--;
}

core.Map<core.String, core.Object?> buildUnnamed35() => {
      'x': {
        'list': [1, 2, 3],
        'bool': true,
        'string': 'foo'
      },
      'y': {
        'list': [1, 2, 3],
        'bool': true,
        'string': 'foo'
      },
    };

void checkUnnamed35(core.Map<core.String, core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted7 = (o['x']!) as core.Map;
  unittest.expect(casted7, unittest.hasLength(3));
  unittest.expect(
    casted7['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted7['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted7['string'],
    unittest.equals('foo'),
  );
  var casted8 = (o['y']!) as core.Map;
  unittest.expect(casted8, unittest.hasLength(3));
  unittest.expect(
    casted8['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted8['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted8['string'],
    unittest.equals('foo'),
  );
}

core.List<core.Map<core.String, core.Object?>> buildUnnamed36() => [
      buildUnnamed35(),
      buildUnnamed35(),
    ];

void checkUnnamed36(core.List<core.Map<core.String, core.Object?>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed35(o[0]);
  checkUnnamed35(o[1]);
}

core.int buildCounterStatus = 0;
api.Status buildStatus() {
  final o = api.Status();
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    o.code = 42;
    o.details = buildUnnamed36();
    o.message = 'foo';
  }
  buildCounterStatus--;
  return o;
}

void checkStatus(api.Status o) {
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    unittest.expect(
      o.code!,
      unittest.equals(42),
    );
    checkUnnamed36(o.details!);
    unittest.expect(
      o.message!,
      unittest.equals('foo'),
    );
  }
  buildCounterStatus--;
}

core.int buildCounterStopInstanceRequest = 0;
api.StopInstanceRequest buildStopInstanceRequest() {
  final o = api.StopInstanceRequest();
  buildCounterStopInstanceRequest++;
  if (buildCounterStopInstanceRequest < 3) {}
  buildCounterStopInstanceRequest--;
  return o;
}

void checkStopInstanceRequest(api.StopInstanceRequest o) {
  buildCounterStopInstanceRequest++;
  if (buildCounterStopInstanceRequest < 3) {}
  buildCounterStopInstanceRequest--;
}

core.int buildCounterSubmitProvisioningConfigRequest = 0;
api.SubmitProvisioningConfigRequest buildSubmitProvisioningConfigRequest() {
  final o = api.SubmitProvisioningConfigRequest();
  buildCounterSubmitProvisioningConfigRequest++;
  if (buildCounterSubmitProvisioningConfigRequest < 3) {
    o.email = 'foo';
    o.provisioningConfig = buildProvisioningConfig();
  }
  buildCounterSubmitProvisioningConfigRequest--;
  return o;
}

void checkSubmitProvisioningConfigRequest(
    api.SubmitProvisioningConfigRequest o) {
  buildCounterSubmitProvisioningConfigRequest++;
  if (buildCounterSubmitProvisioningConfigRequest < 3) {
    unittest.expect(
      o.email!,
      unittest.equals('foo'),
    );
    checkProvisioningConfig(o.provisioningConfig!);
  }
  buildCounterSubmitProvisioningConfigRequest--;
}

core.int buildCounterSubmitProvisioningConfigResponse = 0;
api.SubmitProvisioningConfigResponse buildSubmitProvisioningConfigResponse() {
  final o = api.SubmitProvisioningConfigResponse();
  buildCounterSubmitProvisioningConfigResponse++;
  if (buildCounterSubmitProvisioningConfigResponse < 3) {
    o.provisioningConfig = buildProvisioningConfig();
  }
  buildCounterSubmitProvisioningConfigResponse--;
  return o;
}

void checkSubmitProvisioningConfigResponse(
    api.SubmitProvisioningConfigResponse o) {
  buildCounterSubmitProvisioningConfigResponse++;
  if (buildCounterSubmitProvisioningConfigResponse < 3) {
    checkProvisioningConfig(o.provisioningConfig!);
  }
  buildCounterSubmitProvisioningConfigResponse--;
}

core.List<api.VlanAttachment> buildUnnamed37() => [
      buildVlanAttachment(),
      buildVlanAttachment(),
    ];

void checkUnnamed37(core.List<api.VlanAttachment> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkVlanAttachment(o[0]);
  checkVlanAttachment(o[1]);
}

core.int buildCounterVRF = 0;
api.VRF buildVRF() {
  final o = api.VRF();
  buildCounterVRF++;
  if (buildCounterVRF < 3) {
    o.name = 'foo';
    o.qosPolicy = buildQosPolicy();
    o.state = 'foo';
    o.vlanAttachments = buildUnnamed37();
  }
  buildCounterVRF--;
  return o;
}

void checkVRF(api.VRF o) {
  buildCounterVRF++;
  if (buildCounterVRF < 3) {
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkQosPolicy(o.qosPolicy!);
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
    checkUnnamed37(o.vlanAttachments!);
  }
  buildCounterVRF--;
}

core.int buildCounterVlanAttachment = 0;
api.VlanAttachment buildVlanAttachment() {
  final o = api.VlanAttachment();
  buildCounterVlanAttachment++;
  if (buildCounterVlanAttachment < 3) {
    o.peerIp = 'foo';
    o.peerVlanId = 'foo';
    o.routerIp = 'foo';
  }
  buildCounterVlanAttachment--;
  return o;
}

void checkVlanAttachment(api.VlanAttachment o) {
  buildCounterVlanAttachment++;
  if (buildCounterVlanAttachment < 3) {
    unittest.expect(
      o.peerIp!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.peerVlanId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.routerIp!,
      unittest.equals('foo'),
    );
  }
  buildCounterVlanAttachment--;
}

core.Map<core.String, core.String> buildUnnamed38() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed38(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o['x']!,
    unittest.equals('foo'),
  );
  unittest.expect(
    o['y']!,
    unittest.equals('foo'),
  );
}

core.int buildCounterVolume = 0;
api.Volume buildVolume() {
  final o = api.Volume();
  buildCounterVolume++;
  if (buildCounterVolume < 3) {
    o.autoGrownSizeGib = 'foo';
    o.currentSizeGib = 'foo';
    o.emergencySizeGib = 'foo';
    o.id = 'foo';
    o.labels = buildUnnamed38();
    o.name = 'foo';
    o.pod = 'foo';
    o.remainingSpaceGib = 'foo';
    o.requestedSizeGib = 'foo';
    o.snapshotAutoDeleteBehavior = 'foo';
    o.snapshotEnabled = true;
    o.snapshotReservationDetail = buildSnapshotReservationDetail();
    o.snapshotSchedulePolicy = 'foo';
    o.state = 'foo';
    o.storageType = 'foo';
  }
  buildCounterVolume--;
  return o;
}

void checkVolume(api.Volume o) {
  buildCounterVolume++;
  if (buildCounterVolume < 3) {
    unittest.expect(
      o.autoGrownSizeGib!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.currentSizeGib!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.emergencySizeGib!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    checkUnnamed38(o.labels!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.pod!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.remainingSpaceGib!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.requestedSizeGib!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.snapshotAutoDeleteBehavior!,
      unittest.equals('foo'),
    );
    unittest.expect(o.snapshotEnabled!, unittest.isTrue);
    checkSnapshotReservationDetail(o.snapshotReservationDetail!);
    unittest.expect(
      o.snapshotSchedulePolicy!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.storageType!,
      unittest.equals('foo'),
    );
  }
  buildCounterVolume--;
}

core.List<api.LunRange> buildUnnamed39() => [
      buildLunRange(),
      buildLunRange(),
    ];

void checkUnnamed39(core.List<api.LunRange> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLunRange(o[0]);
  checkLunRange(o[1]);
}

core.List<core.String> buildUnnamed40() => [
      'foo',
      'foo',
    ];

void checkUnnamed40(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o[0],
    unittest.equals('foo'),
  );
  unittest.expect(
    o[1],
    unittest.equals('foo'),
  );
}

core.List<api.NfsExport> buildUnnamed41() => [
      buildNfsExport(),
      buildNfsExport(),
    ];

void checkUnnamed41(core.List<api.NfsExport> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkNfsExport(o[0]);
  checkNfsExport(o[1]);
}

core.int buildCounterVolumeConfig = 0;
api.VolumeConfig buildVolumeConfig() {
  final o = api.VolumeConfig();
  buildCounterVolumeConfig++;
  if (buildCounterVolumeConfig < 3) {
    o.gcpService = 'foo';
    o.id = 'foo';
    o.lunRanges = buildUnnamed39();
    o.machineIds = buildUnnamed40();
    o.name = 'foo';
    o.nfsExports = buildUnnamed41();
    o.protocol = 'foo';
    o.sizeGb = 42;
    o.snapshotsEnabled = true;
    o.type = 'foo';
    o.userNote = 'foo';
  }
  buildCounterVolumeConfig--;
  return o;
}

void checkVolumeConfig(api.VolumeConfig o) {
  buildCounterVolumeConfig++;
  if (buildCounterVolumeConfig < 3) {
    unittest.expect(
      o.gcpService!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    checkUnnamed39(o.lunRanges!);
    checkUnnamed40(o.machineIds!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkUnnamed41(o.nfsExports!);
    unittest.expect(
      o.protocol!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.sizeGb!,
      unittest.equals(42),
    );
    unittest.expect(o.snapshotsEnabled!, unittest.isTrue);
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.userNote!,
      unittest.equals('foo'),
    );
  }
  buildCounterVolumeConfig--;
}

void main() {
  unittest.group('obj-schema-AllowedClient', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAllowedClient();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AllowedClient.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAllowedClient(od);
    });
  });

  unittest.group('obj-schema-DetachLunRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDetachLunRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DetachLunRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDetachLunRequest(od);
    });
  });

  unittest.group('obj-schema-FetchInstanceProvisioningSettingsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildFetchInstanceProvisioningSettingsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.FetchInstanceProvisioningSettingsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkFetchInstanceProvisioningSettingsResponse(od);
    });
  });

  unittest.group('obj-schema-Instance', () {
    unittest.test('to-json--from-json', () async {
      final o = buildInstance();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Instance.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkInstance(od);
    });
  });

  unittest.group('obj-schema-InstanceConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildInstanceConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.InstanceConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkInstanceConfig(od);
    });
  });

  unittest.group('obj-schema-InstanceQuota', () {
    unittest.test('to-json--from-json', () async {
      final o = buildInstanceQuota();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.InstanceQuota.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkInstanceQuota(od);
    });
  });

  unittest.group('obj-schema-IntakeVlanAttachment', () {
    unittest.test('to-json--from-json', () async {
      final o = buildIntakeVlanAttachment();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.IntakeVlanAttachment.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkIntakeVlanAttachment(od);
    });
  });

  unittest.group('obj-schema-ListInstancesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListInstancesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListInstancesResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListInstancesResponse(od);
    });
  });

  unittest.group('obj-schema-ListLocationsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListLocationsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListLocationsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListLocationsResponse(od);
    });
  });

  unittest.group('obj-schema-ListLunsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListLunsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListLunsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListLunsResponse(od);
    });
  });

  unittest.group('obj-schema-ListNetworkUsageResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListNetworkUsageResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListNetworkUsageResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListNetworkUsageResponse(od);
    });
  });

  unittest.group('obj-schema-ListNetworksResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListNetworksResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListNetworksResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListNetworksResponse(od);
    });
  });

  unittest.group('obj-schema-ListNfsSharesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListNfsSharesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListNfsSharesResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListNfsSharesResponse(od);
    });
  });

  unittest.group('obj-schema-ListProvisioningQuotasResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListProvisioningQuotasResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListProvisioningQuotasResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListProvisioningQuotasResponse(od);
    });
  });

  unittest.group('obj-schema-ListVolumesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListVolumesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListVolumesResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListVolumesResponse(od);
    });
  });

  unittest.group('obj-schema-Location', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLocation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Location.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkLocation(od);
    });
  });

  unittest.group('obj-schema-LogicalInterface', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLogicalInterface();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.LogicalInterface.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkLogicalInterface(od);
    });
  });

  unittest.group('obj-schema-Lun', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLun();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Lun.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkLun(od);
    });
  });

  unittest.group('obj-schema-LunRange', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLunRange();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.LunRange.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkLunRange(od);
    });
  });

  unittest.group('obj-schema-Network', () {
    unittest.test('to-json--from-json', () async {
      final o = buildNetwork();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Network.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkNetwork(od);
    });
  });

  unittest.group('obj-schema-NetworkAddress', () {
    unittest.test('to-json--from-json', () async {
      final o = buildNetworkAddress();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.NetworkAddress.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkNetworkAddress(od);
    });
  });

  unittest.group('obj-schema-NetworkAddressReservation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildNetworkAddressReservation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.NetworkAddressReservation.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkNetworkAddressReservation(od);
    });
  });

  unittest.group('obj-schema-NetworkConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildNetworkConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.NetworkConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkNetworkConfig(od);
    });
  });

  unittest.group('obj-schema-NetworkUsage', () {
    unittest.test('to-json--from-json', () async {
      final o = buildNetworkUsage();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.NetworkUsage.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkNetworkUsage(od);
    });
  });

  unittest.group('obj-schema-NfsExport', () {
    unittest.test('to-json--from-json', () async {
      final o = buildNfsExport();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.NfsExport.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkNfsExport(od);
    });
  });

  unittest.group('obj-schema-NfsShare', () {
    unittest.test('to-json--from-json', () async {
      final o = buildNfsShare();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.NfsShare.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkNfsShare(od);
    });
  });

  unittest.group('obj-schema-OSImage', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOSImage();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.OSImage.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkOSImage(od);
    });
  });

  unittest.group('obj-schema-Operation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOperation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Operation.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkOperation(od);
    });
  });

  unittest.group('obj-schema-ProvisioningConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildProvisioningConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ProvisioningConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkProvisioningConfig(od);
    });
  });

  unittest.group('obj-schema-ProvisioningQuota', () {
    unittest.test('to-json--from-json', () async {
      final o = buildProvisioningQuota();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ProvisioningQuota.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkProvisioningQuota(od);
    });
  });

  unittest.group('obj-schema-QosPolicy', () {
    unittest.test('to-json--from-json', () async {
      final o = buildQosPolicy();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.QosPolicy.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkQosPolicy(od);
    });
  });

  unittest.group('obj-schema-ResetInstanceRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildResetInstanceRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ResetInstanceRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkResetInstanceRequest(od);
    });
  });

  unittest.group('obj-schema-ServerNetworkTemplate', () {
    unittest.test('to-json--from-json', () async {
      final o = buildServerNetworkTemplate();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ServerNetworkTemplate.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkServerNetworkTemplate(od);
    });
  });

  unittest.group('obj-schema-SnapshotReservationDetail', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSnapshotReservationDetail();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SnapshotReservationDetail.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSnapshotReservationDetail(od);
    });
  });

  unittest.group('obj-schema-StartInstanceRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildStartInstanceRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.StartInstanceRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkStartInstanceRequest(od);
    });
  });

  unittest.group('obj-schema-Status', () {
    unittest.test('to-json--from-json', () async {
      final o = buildStatus();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Status.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkStatus(od);
    });
  });

  unittest.group('obj-schema-StopInstanceRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildStopInstanceRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.StopInstanceRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkStopInstanceRequest(od);
    });
  });

  unittest.group('obj-schema-SubmitProvisioningConfigRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSubmitProvisioningConfigRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SubmitProvisioningConfigRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSubmitProvisioningConfigRequest(od);
    });
  });

  unittest.group('obj-schema-SubmitProvisioningConfigResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSubmitProvisioningConfigResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SubmitProvisioningConfigResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSubmitProvisioningConfigResponse(od);
    });
  });

  unittest.group('obj-schema-VRF', () {
    unittest.test('to-json--from-json', () async {
      final o = buildVRF();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.VRF.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkVRF(od);
    });
  });

  unittest.group('obj-schema-VlanAttachment', () {
    unittest.test('to-json--from-json', () async {
      final o = buildVlanAttachment();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.VlanAttachment.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkVlanAttachment(od);
    });
  });

  unittest.group('obj-schema-Volume', () {
    unittest.test('to-json--from-json', () async {
      final o = buildVolume();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Volume.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkVolume(od);
    });
  });

  unittest.group('obj-schema-VolumeConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildVolumeConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.VolumeConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkVolumeConfig(od);
    });
  });

  unittest.group('resource-ProjectsLocationsResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.BaremetalsolutionApi(mock).projects.locations;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v2/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = (req.url).query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildLocation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkLocation(response as api.Location);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.BaremetalsolutionApi(mock).projects.locations;
      final arg_name = 'foo';
      final arg_filter = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v2/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = (req.url).query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap['filter']!.first,
          unittest.equals(arg_filter),
        );
        unittest.expect(
          core.int.parse(queryMap['pageSize']!.first),
          unittest.equals(arg_pageSize),
        );
        unittest.expect(
          queryMap['pageToken']!.first,
          unittest.equals(arg_pageToken),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildListLocationsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_name,
          filter: arg_filter,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListLocationsResponse(response as api.ListLocationsResponse);
    });
  });

  unittest.group(
      'resource-ProjectsLocationsInstanceProvisioningSettingsResource', () {
    unittest.test('method--fetch', () async {
      final mock = HttpServerMock();
      final res = api.BaremetalsolutionApi(mock)
          .projects
          .locations
          .instanceProvisioningSettings;
      final arg_location = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v2/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = (req.url).query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json
            .encode(buildFetchInstanceProvisioningSettingsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.fetch(arg_location, $fields: arg_$fields);
      checkFetchInstanceProvisioningSettingsResponse(
          response as api.FetchInstanceProvisioningSettingsResponse);
    });
  });

  unittest.group('resource-ProjectsLocationsInstancesResource', () {
    unittest.test('method--detachLun', () async {
      final mock = HttpServerMock();
      final res = api.BaremetalsolutionApi(mock).projects.locations.instances;
      final arg_request = buildDetachLunRequest();
      final arg_instance = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.DetachLunRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkDetachLunRequest(obj);

        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v2/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = (req.url).query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.detachLun(arg_request, arg_instance, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.BaremetalsolutionApi(mock).projects.locations.instances;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v2/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = (req.url).query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildInstance());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkInstance(response as api.Instance);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.BaremetalsolutionApi(mock).projects.locations.instances;
      final arg_parent = 'foo';
      final arg_filter = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v2/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = (req.url).query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap['filter']!.first,
          unittest.equals(arg_filter),
        );
        unittest.expect(
          core.int.parse(queryMap['pageSize']!.first),
          unittest.equals(arg_pageSize),
        );
        unittest.expect(
          queryMap['pageToken']!.first,
          unittest.equals(arg_pageToken),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildListInstancesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          filter: arg_filter,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListInstancesResponse(response as api.ListInstancesResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.BaremetalsolutionApi(mock).projects.locations.instances;
      final arg_request = buildInstance();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Instance.fromJson(json as core.Map<core.String, core.dynamic>);
        checkInstance(obj);

        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v2/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = (req.url).query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap['updateMask']!.first,
          unittest.equals(arg_updateMask),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_name,
          updateMask: arg_updateMask, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--reset', () async {
      final mock = HttpServerMock();
      final res = api.BaremetalsolutionApi(mock).projects.locations.instances;
      final arg_request = buildResetInstanceRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.ResetInstanceRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkResetInstanceRequest(obj);

        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v2/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = (req.url).query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.reset(arg_request, arg_name, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--start', () async {
      final mock = HttpServerMock();
      final res = api.BaremetalsolutionApi(mock).projects.locations.instances;
      final arg_request = buildStartInstanceRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.StartInstanceRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkStartInstanceRequest(obj);

        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v2/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = (req.url).query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.start(arg_request, arg_name, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--stop', () async {
      final mock = HttpServerMock();
      final res = api.BaremetalsolutionApi(mock).projects.locations.instances;
      final arg_request = buildStopInstanceRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.StopInstanceRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkStopInstanceRequest(obj);

        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v2/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = (req.url).query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.stop(arg_request, arg_name, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });
  });

  unittest.group('resource-ProjectsLocationsNetworksResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.BaremetalsolutionApi(mock).projects.locations.networks;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v2/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = (req.url).query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildNetwork());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkNetwork(response as api.Network);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.BaremetalsolutionApi(mock).projects.locations.networks;
      final arg_parent = 'foo';
      final arg_filter = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v2/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = (req.url).query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap['filter']!.first,
          unittest.equals(arg_filter),
        );
        unittest.expect(
          core.int.parse(queryMap['pageSize']!.first),
          unittest.equals(arg_pageSize),
        );
        unittest.expect(
          queryMap['pageToken']!.first,
          unittest.equals(arg_pageToken),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildListNetworksResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          filter: arg_filter,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListNetworksResponse(response as api.ListNetworksResponse);
    });

    unittest.test('method--listNetworkUsage', () async {
      final mock = HttpServerMock();
      final res = api.BaremetalsolutionApi(mock).projects.locations.networks;
      final arg_location = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v2/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = (req.url).query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildListNetworkUsageResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.listNetworkUsage(arg_location, $fields: arg_$fields);
      checkListNetworkUsageResponse(response as api.ListNetworkUsageResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.BaremetalsolutionApi(mock).projects.locations.networks;
      final arg_request = buildNetwork();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Network.fromJson(json as core.Map<core.String, core.dynamic>);
        checkNetwork(obj);

        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v2/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = (req.url).query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap['updateMask']!.first,
          unittest.equals(arg_updateMask),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_name,
          updateMask: arg_updateMask, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });
  });

  unittest.group('resource-ProjectsLocationsNfsSharesResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.BaremetalsolutionApi(mock).projects.locations.nfsShares;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v2/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = (req.url).query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildNfsShare());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkNfsShare(response as api.NfsShare);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.BaremetalsolutionApi(mock).projects.locations.nfsShares;
      final arg_parent = 'foo';
      final arg_filter = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v2/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = (req.url).query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap['filter']!.first,
          unittest.equals(arg_filter),
        );
        unittest.expect(
          core.int.parse(queryMap['pageSize']!.first),
          unittest.equals(arg_pageSize),
        );
        unittest.expect(
          queryMap['pageToken']!.first,
          unittest.equals(arg_pageToken),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildListNfsSharesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          filter: arg_filter,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListNfsSharesResponse(response as api.ListNfsSharesResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.BaremetalsolutionApi(mock).projects.locations.nfsShares;
      final arg_request = buildNfsShare();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.NfsShare.fromJson(json as core.Map<core.String, core.dynamic>);
        checkNfsShare(obj);

        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v2/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = (req.url).query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap['updateMask']!.first,
          unittest.equals(arg_updateMask),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_name,
          updateMask: arg_updateMask, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });
  });

  unittest.group('resource-ProjectsLocationsProvisioningConfigsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res =
          api.BaremetalsolutionApi(mock).projects.locations.provisioningConfigs;
      final arg_request = buildProvisioningConfig();
      final arg_parent = 'foo';
      final arg_email = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.ProvisioningConfig.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkProvisioningConfig(obj);

        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v2/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = (req.url).query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap['email']!.first,
          unittest.equals(arg_email),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildProvisioningConfig());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.create(arg_request, arg_parent,
          email: arg_email, $fields: arg_$fields);
      checkProvisioningConfig(response as api.ProvisioningConfig);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res =
          api.BaremetalsolutionApi(mock).projects.locations.provisioningConfigs;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v2/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = (req.url).query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildProvisioningConfig());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkProvisioningConfig(response as api.ProvisioningConfig);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res =
          api.BaremetalsolutionApi(mock).projects.locations.provisioningConfigs;
      final arg_request = buildProvisioningConfig();
      final arg_name = 'foo';
      final arg_email = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.ProvisioningConfig.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkProvisioningConfig(obj);

        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v2/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = (req.url).query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap['email']!.first,
          unittest.equals(arg_email),
        );
        unittest.expect(
          queryMap['updateMask']!.first,
          unittest.equals(arg_updateMask),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildProvisioningConfig());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_name,
          email: arg_email, updateMask: arg_updateMask, $fields: arg_$fields);
      checkProvisioningConfig(response as api.ProvisioningConfig);
    });

    unittest.test('method--submit', () async {
      final mock = HttpServerMock();
      final res =
          api.BaremetalsolutionApi(mock).projects.locations.provisioningConfigs;
      final arg_request = buildSubmitProvisioningConfigRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.SubmitProvisioningConfigRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkSubmitProvisioningConfigRequest(obj);

        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v2/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = (req.url).query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp =
            convert.json.encode(buildSubmitProvisioningConfigResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.submit(arg_request, arg_parent, $fields: arg_$fields);
      checkSubmitProvisioningConfigResponse(
          response as api.SubmitProvisioningConfigResponse);
    });
  });

  unittest.group('resource-ProjectsLocationsProvisioningQuotasResource', () {
    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res =
          api.BaremetalsolutionApi(mock).projects.locations.provisioningQuotas;
      final arg_parent = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v2/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = (req.url).query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          core.int.parse(queryMap['pageSize']!.first),
          unittest.equals(arg_pageSize),
        );
        unittest.expect(
          queryMap['pageToken']!.first,
          unittest.equals(arg_pageToken),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildListProvisioningQuotasResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListProvisioningQuotasResponse(
          response as api.ListProvisioningQuotasResponse);
    });
  });

  unittest.group('resource-ProjectsLocationsVolumesResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.BaremetalsolutionApi(mock).projects.locations.volumes;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v2/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = (req.url).query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildVolume());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkVolume(response as api.Volume);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.BaremetalsolutionApi(mock).projects.locations.volumes;
      final arg_parent = 'foo';
      final arg_filter = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v2/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = (req.url).query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap['filter']!.first,
          unittest.equals(arg_filter),
        );
        unittest.expect(
          core.int.parse(queryMap['pageSize']!.first),
          unittest.equals(arg_pageSize),
        );
        unittest.expect(
          queryMap['pageToken']!.first,
          unittest.equals(arg_pageToken),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildListVolumesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          filter: arg_filter,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListVolumesResponse(response as api.ListVolumesResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.BaremetalsolutionApi(mock).projects.locations.volumes;
      final arg_request = buildVolume();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Volume.fromJson(json as core.Map<core.String, core.dynamic>);
        checkVolume(obj);

        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v2/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = (req.url).query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap['updateMask']!.first,
          unittest.equals(arg_updateMask),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_name,
          updateMask: arg_updateMask, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });
  });

  unittest.group('resource-ProjectsLocationsVolumesLunsResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res =
          api.BaremetalsolutionApi(mock).projects.locations.volumes.luns;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v2/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = (req.url).query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildLun());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkLun(response as api.Lun);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res =
          api.BaremetalsolutionApi(mock).projects.locations.volumes.luns;
      final arg_parent = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v2/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = (req.url).query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          core.int.parse(queryMap['pageSize']!.first),
          unittest.equals(arg_pageSize),
        );
        unittest.expect(
          queryMap['pageToken']!.first,
          unittest.equals(arg_pageToken),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildListLunsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListLunsResponse(response as api.ListLunsResponse);
    });
  });
}
