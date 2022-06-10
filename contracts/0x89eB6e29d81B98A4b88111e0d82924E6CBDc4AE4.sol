contract main {




// =====================  Runtime code  =====================


#
#  - buyItem(uint256 arg1, address arg2, string arg3, string arg4, string arg5)
#  - createMicroModule(uint256 arg1, string arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, uint256 arg7)
#  - getArtefactById(uint256 arg1)
#  - getMicroModuleByIdPart2(uint256 arg1)
#  - createGenerator(uint256 arg1, string arg2, uint256 arg3, uint256 arg4, uint256 arg5)
#  - getEngineById(uint256 arg1)
#  - getMicroModuleByIdPart1(uint256 arg1)
#  - createScanner(uint256 arg1, string arg2, uint256 arg3, uint256 arg4, uint256 arg5)
#  - createEngine(uint256 arg1, string arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6)
#  - createArtefact(uint256 arg1, string arg2, uint256 arg3, uint256 arg4, uint256 arg5)
#
address stor0;
mapping of uint256 numberOfItemsByTypeAndOwner;
mapping of uint256 stor2;
mapping of struct stor3;
mapping of address ownerByItemTypeAndId;
address stor8;
address stor9;
mapping of uint256 checkRefundExistanceByOwner;
array of uint256 stor99;

function getNumberOfItemsByTypeAndOwner(string arg1, address arg2) {
    mem[128 len arg1.length] = arg1[all]
    require msg.sender == stor9
    mem[ceil32(arg1.length) + 128] = 20
    mem[ceil32(arg1.length) + 160 len 640] = code.data[23373 len 640]
    idx = 0
    while idx < 20:
        require 2^(8 * -idx + 19)
        require idx < 20
        mem[ceil32(arg1.length) + idx + 160 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('div', ('param', 'arg2'), ('exp', 2, ('mask_shl', 253, 0, 3, ('add', 19, ('mul', -1, ('var', 0))))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('div', ('param', 'arg2'), ('exp', 2, ('mask_shl', 253, 0, 3, ('add', 19, ('mul', -1, ('var', 0))))))), 0) - 256
        idx = idx + 1
        continue 
    mem[ceil32(arg1.length) + 224 len 0] = None
    mem[ceil32(arg1.length) + 236 len 20] = mem[ceil32(arg1.length) + 172 len 20]
    mem[ceil32(arg1.length) + 244 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 276 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
    mem[arg1.length + ceil32(arg1.length) + 244 len floor32(arg1.length + 20)] = mem[ceil32(arg1.length) + 224 len floor32(arg1.length + 20)]
    return numberOfItemsByTypeAndOwner[mem[ceil32(arg1.length) + 224 len floor32(arg1.length + 20)]][mem[arg1.length + ceil32(arg1.length) + floor32(arg1.length + 20) + 244 len -(arg1.length + 20 % 32) + 32]][mem[ceil32(arg1.length) + -(arg1.length + 20 % 32) + floor32(arg1.length + 20) + 256 len arg1.length + -floor32(arg1.length + 20) + (arg1.length + 20 % 32) - 12]]
}

function checkRefundExistanceByOwner(address arg1) {
    require msg.sender == stor9
    return checkRefundExistanceByOwner[address(arg1)]
}

function getGunByIdPart2(uint256 arg1) {
    require msg.sender == stor9
    mem[256 len 0] = None
    mem[458 len 0] = None
    mem[662 len 0] = None
    mem[865 len 0] = None
    mem[1066 len 0] = None
    return numberOfItemsByTypeAndOwner[mem[256 len 4]][Mask(224, 32, arg1) >> 32][mem[330 len 10]], 
           numberOfItemsByTypeAndOwner[mem[458 len 4]][Mask(224, 32, arg1) >> 32][mem[534 len 12]],
           numberOfItemsByTypeAndOwner[mem[662 len 4]][Mask(224, 32, arg1) >> 32][mem[737 len 11]],
           numberOfItemsByTypeAndOwner[mem[865 len 4]][Mask(224, 32, arg1) >> 32][mem[938 len 9]],
           numberOfItemsByTypeAndOwner[mem[1066 len 4]][Mask(224, 32, arg1) >> 32][mem[1144 len 14]]
}

function getItemPriceById(string arg1, uint256 arg2) {
    mem[128 len arg1.length] = arg1[all]
    require msg.sender == stor9
    mem[ceil32(arg1.length) + 128] = 5
    mem[ceil32(arg1.length) + 160] = 'price'
    mem[ceil32(arg1.length) + 224 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 256 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
    mem[arg1.length + ceil32(arg1.length) + 224] = arg2
    mem[arg1.length + ceil32(arg1.length) + 256 len 0] = None
    return numberOfItemsByTypeAndOwner[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + floor32(arg1.length) + 224 len floor32(arg1.length + 37) - floor32(arg1.length)]][mem[arg1.length + ceil32(arg1.length) + floor32(arg1.length + 37) + 261 len arg1.length + -floor32(arg1.length + 37) + 37]]
}

function getOwnerByItemTypeAndId(string arg1, uint256 arg2) {
    mem[128 len arg1.length] = arg1[all]
    require msg.sender == stor9
    mem[ceil32(arg1.length) + 160 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 192 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
    mem[arg1.length + ceil32(arg1.length) + 160] = arg2
    mem[arg1.length + ceil32(arg1.length) + 192 len floor32(arg1.length + 32)] = call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + floor32(arg1.length) + 160 len floor32(arg1.length + 32) - floor32(arg1.length)]
    mem[arg1.length + ceil32(arg1.length) + floor32(arg1.length + 32) + -(arg1.length + 32 % 32) + 224 len arg1.length + 32 % 32] = mem[ceil32(arg1.length) + floor32(arg1.length + 32) + -(arg1.length + 32 % 32) + 192 len arg1.length + 32 % 32]
    return ownerByItemTypeAndId[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + floor32(arg1.length) + 160 len floor32(arg1.length + 32) - floor32(arg1.length)]][mem[arg1.length + ceil32(arg1.length) + floor32(arg1.length + 32) + 192 len arg1.length + -floor32(arg1.length + 32) + 32]]
}

function destroyEternalStorage() {
    require msg.sender == stor8
    selfdestruct(0xd135377eb20666725d518c967f23e168045ee11f)
}

function _fallback() payable {
    revert
}

function transferOwnershipOfStorage(address arg1) {
    require msg.sender == stor8
    require arg1
    stor8 = arg1
}

function changeLogicContractAddress(address arg1) {
    require msg.sender == stor8
    require arg1
    stor9 = arg1
}

function addReferrer(address arg1, uint256 arg2) {
    require msg.sender == stor9
    checkRefundExistanceByOwner[address(arg1)] += arg2
}

function widthdrawRefunds(address arg1) {
    require msg.sender == stor9
    checkRefundExistanceByOwner[address(arg1)] = 0
    return checkRefundExistanceByOwner[address(arg1)]
}

function getGunByIdPart1(uint256 arg1) {
    require msg.sender == stor9
    mem[256 len 0] = None
    _243 = sha3(sha3(mem[256 len 4], Mask(224, 32, arg1) >> 32, mem[328 len 8]), 3)
    mem[456 len 0] = None
    _426 = sha3(sha3(mem[456 len 4], Mask(224, 32, arg1) >> 32, mem[527 len 7]), 1)
    mem[655 len 0] = None
    _549 = sha3(sha3(mem[655 len 4], Mask(224, 32, arg1) >> 32, mem[726 len 7]), 1)
    mem[726] = uint256(stor[sha3(_243)])
    idx = 726
    s = 0
    while stor[_243].length + 694 > idx:
        mem[idx + 32] = uint256(stor[s + sha3(_243) + 1])
        idx = idx + 32
        s = s + 1
        continue 
    return arg1, Array(len=stor[_243].length, data=mem[726 len stor[_243].length]), uint256(stor[_426]), uint256(stor[_549])
}

function getShipById(uint256 arg1) {
    require msg.sender == stor9
    mem[256 len 0] = None
    _303 = sha3(sha3(mem[256 len 5], Mask(216, 40, arg1) >> 40, mem[329 len 9]), 3)
    mem[457 len 0] = None
    _546 = sha3(sha3(mem[457 len 5], Mask(216, 40, arg1) >> 40, mem[528 len 7]), 1)
    mem[656 len 0] = None
    _729 = sha3(sha3(mem[656 len 5], Mask(216, 40, arg1) >> 40, mem[730 len 10]), 1)
    mem[858 len 0] = None
    _852 = sha3(sha3(mem[858 len 5], Mask(216, 40, arg1) >> 40, mem[932 len 10]), 1)
    mem[932] = uint256(stor[sha3(_303)])
    idx = 932
    s = 0
    while stor[_303].length + 900 > idx:
        mem[idx + 32] = uint256(stor[s + sha3(_303) + 1])
        idx = idx + 32
        s = s + 1
        continue 
    return arg1, 
           Array(len=stor[_303].length, data=mem[932 len stor[_303].length]),
           uint256(stor[_546]),
           uint256(stor[_729]),
           uint256(stor[_852])
}

function setNewPriceToItem(string arg1, uint256 arg2, uint256 arg3) {
    mem[128 len arg1.length] = arg1[all]
    require msg.sender == stor9
    mem[ceil32(arg1.length) + 128] = 5
    mem[ceil32(arg1.length) + 160] = 'price'
    mem[ceil32(arg1.length) + 224 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 256 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
    mem[arg1.length + ceil32(arg1.length) + 224] = arg2
    mem[arg1.length + ceil32(arg1.length) + 256 len 0] = None
    numberOfItemsByTypeAndOwner[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + floor32(arg1.length) + 224 len floor32(arg1.length + 37) - floor32(arg1.length)]][mem[arg1.length + ceil32(arg1.length) + floor32(arg1.length + 37) + 261 len arg1.length + -floor32(arg1.length + 37) + 37]] = arg3
}

function createShip(uint256 arg1, string arg2, uint256 arg3, uint256 arg4, uint256 arg5) {
    require msg.sender == stor8
    require ext_code.size(stor0)
    call stor0.createShip(uint256 arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(arg2.length) + 288 len 0] = None
    uint256(stor3[mem[ceil32(arg2.length) + 288 len 5]][Mask(216, 40, arg1) >> 40][mem[ceil32(arg2.length) + 361 len 9]][].field_0) = Array(len=arg2.length, data=arg2[all])
    mem[ceil32(arg2.length) + 489 len 0] = None
    numberOfItemsByTypeAndOwner[mem[ceil32(arg2.length) + 489 len 5]][Mask(216, 40, arg1) >> 40][mem[ceil32(arg2.length) + 560 len 7]] = arg3
    mem[ceil32(arg2.length) + 688 len 0] = None
    numberOfItemsByTypeAndOwner[mem[ceil32(arg2.length) + 688 len 5]][Mask(216, 40, arg1) >> 40][mem[ceil32(arg2.length) + 762 len 10]] = arg4
    mem[ceil32(arg2.length) + 890 len 0] = None
    numberOfItemsByTypeAndOwner[mem[ceil32(arg2.length) + 890 len 5]][Mask(216, 40, arg1) >> 40][mem[ceil32(arg2.length) + 964 len 10]] = arg5
}

function createFuel(uint256 arg1, string arg2, uint256 arg3, uint256 arg4, uint256 arg5) {
    require msg.sender == stor8
    require ext_code.size(stor0)
    call stor0.createFuel(uint256 arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(arg2.length) + 288 len 0] = None
    uint256(stor3[mem[ceil32(arg2.length) + 288 len 5]][Mask(216, 40, arg1) >> 40][mem[ceil32(arg2.length) + 361 len 9]][].field_0) = Array(len=arg2.length, data=arg2[all])
    mem[ceil32(arg2.length) + 425 len 0] = None
    numberOfItemsByTypeAndOwner[mem[ceil32(arg2.length) + 425 len 5]][Mask(216, 40, arg1) >> 40][mem[ceil32(arg2.length) + 499 len 10]] = arg3
    mem[ceil32(arg2.length) + 563 len 0] = None
    numberOfItemsByTypeAndOwner[mem[ceil32(arg2.length) + 563 len 5]][Mask(216, 40, arg1) >> 40][mem[ceil32(arg2.length) + 637 len 10]] = arg4
    mem[ceil32(arg2.length) + 701 len 0] = None
    numberOfItemsByTypeAndOwner[mem[ceil32(arg2.length) + 701 len 5]][Mask(216, 40, arg1) >> 40][mem[ceil32(arg2.length) + 780 len 15]] = arg5
}

function createRadar(uint256 arg1, string arg2, uint256 arg3, uint256 arg4, uint256 arg5) {
    require msg.sender == stor8
    require ext_code.size(stor0)
    call stor0.createRadar(uint256 arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(arg2.length) + 288 len 0] = None
    uint256(stor3[mem[ceil32(arg2.length) + 288 len 6]][Mask(208, 48, arg1) >> 48][mem[ceil32(arg2.length) + 362 len 10]][].field_0) = Array(len=arg2.length, data=arg2[all])
    mem[ceil32(arg2.length) + 426 len 0] = None
    numberOfItemsByTypeAndOwner[mem[ceil32(arg2.length) + 426 len 6]][Mask(208, 48, arg1) >> 48][mem[ceil32(arg2.length) + 501 len 11]] = arg3
    mem[ceil32(arg2.length) + 565 len 0] = None
    numberOfItemsByTypeAndOwner[mem[ceil32(arg2.length) + 565 len 6]][Mask(208, 48, arg1) >> 48][mem[ceil32(arg2.length) + 640 len 11]] = arg4
    mem[ceil32(arg2.length) + 704 len 0] = None
    numberOfItemsByTypeAndOwner[mem[ceil32(arg2.length) + 704 len 6]][Mask(208, 48, arg1) >> 48][mem[ceil32(arg2.length) + 784 len 16]] = arg5
}

function createDroid(uint256 arg1, string arg2, uint256 arg3, uint256 arg4, uint256 arg5) {
    require msg.sender == stor8
    require ext_code.size(stor0)
    call stor0.createDroid(uint256 arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(arg2.length) + 288 len 0] = None
    uint256(stor3[mem[ceil32(arg2.length) + 288 len 6]][Mask(208, 48, arg1) >> 48][mem[ceil32(arg2.length) + 362 len 10]][].field_0) = Array(len=arg2.length, data=arg2[all])
    mem[ceil32(arg2.length) + 426 len 0] = None
    numberOfItemsByTypeAndOwner[mem[ceil32(arg2.length) + 426 len 6]][Mask(208, 48, arg1) >> 48][mem[ceil32(arg2.length) + 501 len 11]] = arg3
    mem[ceil32(arg2.length) + 565 len 0] = None
    numberOfItemsByTypeAndOwner[mem[ceil32(arg2.length) + 565 len 6]][Mask(208, 48, arg1) >> 48][mem[ceil32(arg2.length) + 640 len 11]] = arg4
    mem[ceil32(arg2.length) + 704 len 0] = None
    numberOfItemsByTypeAndOwner[mem[ceil32(arg2.length) + 704 len 6]][Mask(208, 48, arg1) >> 48][mem[ceil32(arg2.length) + 784 len 16]] = arg5
}

function createGun(uint256 arg1, string arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, uint256 arg7, uint256 arg8, uint256 arg9) {
    require msg.sender == stor8
    require ext_code.size(stor0)
    call stor0.createGun(uint256 arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(arg2.length) + 288 len 0] = None
    uint256(stor3[mem[ceil32(arg2.length) + 288 len 4]][Mask(224, 32, arg1) >> 32][mem[ceil32(arg2.length) + 360 len 8]][].field_0) = Array(len=arg2.length, data=arg2[all])
    mem[ceil32(arg2.length) + 488 len 0] = None
    numberOfItemsByTypeAndOwner[mem[ceil32(arg2.length) + 488 len 4]][Mask(224, 32, arg1) >> 32][mem[ceil32(arg2.length) + 559 len 7]] = arg3
    mem[ceil32(arg2.length) + 687 len 0] = None
    numberOfItemsByTypeAndOwner[mem[ceil32(arg2.length) + 687 len 4]][Mask(224, 32, arg1) >> 32][mem[ceil32(arg2.length) + 758 len 7]] = arg4
    mem[ceil32(arg2.length) + 886 len 0] = None
    numberOfItemsByTypeAndOwner[mem[ceil32(arg2.length) + 886 len 4]][Mask(224, 32, arg1) >> 32][mem[ceil32(arg2.length) + 960 len 10]] = arg5
    mem[ceil32(arg2.length) + 1088 len 0] = None
    numberOfItemsByTypeAndOwner[mem[ceil32(arg2.length) + 1088 len 4]][Mask(224, 32, arg1) >> 32][mem[ceil32(arg2.length) + 1164 len 12]] = arg6
    # nil
}

function initWithShips() {
    require msg.sender == stor8
    require ext_code.size(stor0)
    call stor0.createShip(uint256 arg1) with:
         gas gas_remaining wei
        args 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[320 len 0] = None
    bool(stor3[mem[320 len 5]][0][mem[393 len 9]].field_0) = 0
    uint255(stor3[mem[320 len 5]][0][mem[393 len 9]].field_1) = 20
    Mask(248, 0, stor3[mem[320 len 5]][0][mem[393 len 9]].field_8) = 'Titanium Ranger Hull' / 256
    idx = 0
    while stor3[mem[320 len 5]][0][mem[393 len 9]].length + 31 / 32 > idx:
        uint256(stor3[mem[320 len 5]][0][mem[393 len 9]][idx].field_0) = 0
        idx = idx + 1
        continue 
    mem[521 len 0] = None
    numberOfItemsByTypeAndOwner[mem[521 len 5]][0][mem[592 len 7]] = 200
    mem[720 len 0] = None
    numberOfItemsByTypeAndOwner[mem[720 len 5]][0][mem[794 len 10]] = 2
    mem[922 len 0] = None
    numberOfItemsByTypeAndOwner[mem[922 len 5]][0][mem[996 len 10]] = 5 * 10^9 * 3600
    require msg.sender == stor8
    require ext_code.size(stor0)
    call stor0.createShip(uint256 arg1) with:
         gas gas_remaining wei
        args 2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[1188 len 0] = None
    bool(stor3[mem[1188 len 5]][0][mem[1261 len 9]].field_0) = 0
    uint255(stor3[mem[1188 len 5]][0][mem[1261 len 9]].field_1) = 20
    Mask(248, 0, stor3[mem[1188 len 5]][0][mem[1261 len 9]].field_8) = 'Platinum Ranger Hull' / 256
    idx = 0
    while stor3[mem[1188 len 5]][0][mem[1261 len 9]].length + 31 / 32 > idx:
        uint256(stor3[mem[1188 len 5]][0][mem[1261 len 9]][idx].field_0) = 0
        idx = idx + 1
        continue 
    # nil
}

function getItemsByTypeAndOwner(string arg1, address arg2) {
    mem[128 len arg1.length] = arg1[all]
    require msg.sender == stor9
    mem[ceil32(arg1.length) + 128] = 20
    mem[ceil32(arg1.length) + 160 len 640] = code.data[23373 len 640]
    idx = 0
    while idx < 20:
        require 2^(8 * -idx + 19)
        require idx < 20
        mem[ceil32(arg1.length) + idx + 160 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('div', ('param', 'arg2'), ('exp', 2, ('mask_shl', 253, 0, 3, ('add', 19, ('mul', -1, ('var', 0))))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('div', ('param', 'arg2'), ('exp', 2, ('mask_shl', 253, 0, 3, ('add', 19, ('mul', -1, ('var', 0))))))), 0) - 256
        idx = idx + 1
        continue 
    mem[ceil32(arg1.length) + 224 len 0] = None
    mem[ceil32(arg1.length) + 236 len 20] = mem[ceil32(arg1.length) + 172 len 20]
    mem[ceil32(arg1.length) + 244 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 276 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
    mem[ceil32(arg1.length) + 192] = arg1.length + 20
    mem[arg1.length + ceil32(arg1.length) + 244 len floor32(arg1.length + 20)] = mem[ceil32(arg1.length) + 224 len floor32(arg1.length + 20)]
    mem[arg1.length + ceil32(arg1.length) + floor32(arg1.length + 20) + -(arg1.length + 20 % 32) + 276 len arg1.length + 20 % 32] = mem[ceil32(arg1.length) + floor32(arg1.length + 20) + -(arg1.length + 20 % 32) + 256 len arg1.length + 20 % 32]
    mem[0] = sha3(mem[ceil32(arg1.length) + 224 len floor32(arg1.length + 20)], mem[arg1.length + ceil32(arg1.length) + floor32(arg1.length + 20) + 244 len -(arg1.length + 20 % 32) + 32], mem[ceil32(arg1.length) + floor32(arg1.length + 20) + -(arg1.length + 20 % 32) + 256 len arg1.length + -floor32(arg1.length + 20) + (arg1.length + 20 % 32) - 12])
    _77 = sha3(sha3(mem[ceil32(arg1.length) + 224 len floor32(arg1.length + 20)], mem[arg1.length + ceil32(arg1.length) + floor32(arg1.length + 20) + 244 len -(arg1.length + 20 % 32) + 32], mem[ceil32(arg1.length) + floor32(arg1.length + 20) + -(arg1.length + 20 % 32) + 256 len arg1.length + -floor32(arg1.length + 20) + (arg1.length + 20 % 32) - 12]), 2)
    mem[64] = arg1.length + ceil32(arg1.length) + (32 * stor2[mem[ceil32(arg1.length) + 224 len floor32(arg1.length + 20)]][mem[arg1.length + ceil32(arg1.length) + floor32(arg1.length + 20) + 244 len -(arg1.length + 20 % 32) + 32]][mem[ceil32(arg1.length) + floor32(arg1.length + 20) + -(arg1.length + 20 % 32) + 256 len arg1.length + -floor32(arg1.length + 20) + (arg1.length + 20 % 32) - 12]]) + 276
    mem[arg1.length + ceil32(arg1.length) + 244] = stor2[mem[ceil32(arg1.length) + 224 len floor32(arg1.length + 20)]][mem[arg1.length + ceil32(arg1.length) + floor32(arg1.length + 20) + 244 len -(arg1.length + 20 % 32) + 32]][mem[ceil32(arg1.length) + floor32(arg1.length + 20) + -(arg1.length + 20 % 32) + 256 len arg1.length + -floor32(arg1.length + 20) + (arg1.length + 20 % 32) - 12]]
    if not stor2[mem[0]]:
        mem[mem[64]] = 32
        mem[mem[64] + 32] = mem[arg1.length + ceil32(arg1.length) + 244]
        _82 = mem[arg1.length + ceil32(arg1.length) + 244]
        mem[mem[64] + 64 len floor32(mem[arg1.length + ceil32(arg1.length) + 244])] = mem[arg1.length + ceil32(arg1.length) + 276 len floor32(mem[arg1.length + ceil32(arg1.length) + 244])]
        return 32, mem[mem[64] + 32 len (32 * _82) + 32]
    mem[0] = sha3(mem[0], 2)
    mem[arg1.length + ceil32(arg1.length) + 276] = uint256(stor[sha3(_77)])
    idx = arg1.length + ceil32(arg1.length) + 276
    s = 0
    while arg1.length + ceil32(arg1.length) + (32 * uint256(stor[_77])) + 244 > idx:
        mem[idx + 32] = uint256(stor[s + sha3(_77) + 1])
        idx = idx + 32
        s = s + 1
        continue 
    mem[mem[64]] = 32
    mem[mem[64] + 32] = mem[arg1.length + ceil32(arg1.length) + 244]
    _89 = mem[arg1.length + ceil32(arg1.length) + 244]
    mem[mem[64] + 64 len floor32(mem[arg1.length + ceil32(arg1.length) + 244])] = mem[arg1.length + ceil32(arg1.length) + 276 len floor32(mem[arg1.length + ceil32(arg1.length) + 244])]
    return 32, mem[mem[64] + 32 len (32 * _89) + 32]
}

function getItemsIdsByTypeAndOwner(string arg1, address arg2) {
    mem[128 len arg1.length] = arg1[all]
    require msg.sender == stor9
    mem[ceil32(arg1.length) + 128] = 20
    mem[ceil32(arg1.length) + 160 len 640] = code.data[23373 len 640]
    idx = 0
    while idx < 20:
        require 2^(8 * -idx + 19)
        require idx < 20
        mem[ceil32(arg1.length) + idx + 160 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('div', ('param', 'arg2'), ('exp', 2, ('mask_shl', 253, 0, 3, ('add', 19, ('mul', -1, ('var', 0))))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('div', ('param', 'arg2'), ('exp', 2, ('mask_shl', 253, 0, 3, ('add', 19, ('mul', -1, ('var', 0))))))), 0) - 256
        idx = idx + 1
        continue 
    mem[ceil32(arg1.length) + 224 len 0] = None
    mem[ceil32(arg1.length) + 236 len 20] = mem[ceil32(arg1.length) + 172 len 20]
    mem[ceil32(arg1.length) + 244 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 276 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
    mem[ceil32(arg1.length) + 192] = arg1.length + 20
    mem[arg1.length + ceil32(arg1.length) + 244 len floor32(arg1.length + 20)] = mem[ceil32(arg1.length) + 224 len floor32(arg1.length + 20)]
    mem[arg1.length + ceil32(arg1.length) + floor32(arg1.length + 20) + -(arg1.length + 20 % 32) + 276 len arg1.length + 20 % 32] = mem[ceil32(arg1.length) + floor32(arg1.length + 20) + -(arg1.length + 20 % 32) + 256 len arg1.length + 20 % 32]
    mem[0] = sha3(mem[ceil32(arg1.length) + 224 len floor32(arg1.length + 20)], mem[arg1.length + ceil32(arg1.length) + floor32(arg1.length + 20) + 244 len -(arg1.length + 20 % 32) + 32], mem[ceil32(arg1.length) + floor32(arg1.length + 20) + -(arg1.length + 20 % 32) + 256 len arg1.length + -floor32(arg1.length + 20) + (arg1.length + 20 % 32) - 12])
    _77 = sha3(sha3(mem[ceil32(arg1.length) + 224 len floor32(arg1.length + 20)], mem[arg1.length + ceil32(arg1.length) + floor32(arg1.length + 20) + 244 len -(arg1.length + 20 % 32) + 32], mem[ceil32(arg1.length) + floor32(arg1.length + 20) + -(arg1.length + 20 % 32) + 256 len arg1.length + -floor32(arg1.length + 20) + (arg1.length + 20 % 32) - 12]), 2)
    mem[64] = arg1.length + ceil32(arg1.length) + (32 * stor2[mem[ceil32(arg1.length) + 224 len floor32(arg1.length + 20)]][mem[arg1.length + ceil32(arg1.length) + floor32(arg1.length + 20) + 244 len -(arg1.length + 20 % 32) + 32]][mem[ceil32(arg1.length) + floor32(arg1.length + 20) + -(arg1.length + 20 % 32) + 256 len arg1.length + -floor32(arg1.length + 20) + (arg1.length + 20 % 32) - 12]]) + 276
    mem[arg1.length + ceil32(arg1.length) + 244] = stor2[mem[ceil32(arg1.length) + 224 len floor32(arg1.length + 20)]][mem[arg1.length + ceil32(arg1.length) + floor32(arg1.length + 20) + 244 len -(arg1.length + 20 % 32) + 32]][mem[ceil32(arg1.length) + floor32(arg1.length + 20) + -(arg1.length + 20 % 32) + 256 len arg1.length + -floor32(arg1.length + 20) + (arg1.length + 20 % 32) - 12]]
    if not stor2[mem[0]]:
        mem[mem[64]] = 32
        mem[mem[64] + 32] = mem[arg1.length + ceil32(arg1.length) + 244]
        _82 = mem[arg1.length + ceil32(arg1.length) + 244]
        mem[mem[64] + 64 len floor32(mem[arg1.length + ceil32(arg1.length) + 244])] = mem[arg1.length + ceil32(arg1.length) + 276 len floor32(mem[arg1.length + ceil32(arg1.length) + 244])]
        return 32, mem[mem[64] + 32 len (32 * _82) + 32]
    mem[0] = sha3(mem[0], 2)
    mem[arg1.length + ceil32(arg1.length) + 276] = uint256(stor[sha3(_77)])
    idx = arg1.length + ceil32(arg1.length) + 276
    s = 0
    while arg1.length + ceil32(arg1.length) + (32 * uint256(stor[_77])) + 244 > idx:
        mem[idx + 32] = uint256(stor[s + sha3(_77) + 1])
        idx = idx + 32
        s = s + 1
        continue 
    mem[mem[64]] = 32
    mem[mem[64] + 32] = mem[arg1.length + ceil32(arg1.length) + 244]
    _89 = mem[arg1.length + ceil32(arg1.length) + 244]
    mem[mem[64] + 64 len floor32(mem[arg1.length + ceil32(arg1.length) + 244])] = mem[arg1.length + ceil32(arg1.length) + 276 len floor32(mem[arg1.length + ceil32(arg1.length) + 244])]
    return 32, mem[mem[64] + 32 len (32 * _89) + 32]
}

function getTypicalItemById(string arg1, uint256 arg2) {
    mem[96] = arg1.length
    mem[128 len arg1.length] = arg1[all]
    require msg.sender == stor9
    mem[ceil32(arg1.length) + 128] = 4
    mem[ceil32(arg1.length) + 160] = 'name'
    mem[ceil32(arg1.length) + 224 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 256 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
    mem[arg1.length + ceil32(arg1.length) + 224] = arg2
    mem[arg1.length + ceil32(arg1.length) + 256 len 0] = None
    mem[ceil32(arg1.length) + 192] = arg1.length + 36
    mem[arg1.length + ceil32(arg1.length) + 260 len floor32(arg1.length + 36)] = call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + floor32(arg1.length) + 224 len floor32(arg1.length + 36) - floor32(arg1.length)]
    mem[arg1.length + ceil32(arg1.length) + floor32(arg1.length + 36) + -(arg1.length + 36 % 32) + 292 len arg1.length + 36 % 32] = mem[ceil32(arg1.length) + floor32(arg1.length + 36) + -(arg1.length + 36 % 32) + -arg1.length + 220 len arg1.length + 36 % 32]
    _294 = sha3(sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + floor32(arg1.length) + 224 len floor32(arg1.length + 36) - floor32(arg1.length)], mem[arg1.length + ceil32(arg1.length) + floor32(arg1.length + 36) + 260 len arg1.length + -floor32(arg1.length + 36) + 36]), 3)
    mem[arg1.length + ceil32(arg1.length) + 260] = 5
    mem[arg1.length + ceil32(arg1.length) + 292] = 'value'
    mem[arg1.length + ceil32(arg1.length) + 356 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[(2 * floor32(arg1.length)) + ceil32(arg1.length) + 388 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
    mem[(2 * arg1.length) + ceil32(arg1.length) + 356] = arg2
    mem[(2 * arg1.length) + ceil32(arg1.length) + 388 len 0] = None
    mem[(2 * arg1.length) + ceil32(arg1.length) + 415 len 5] = 'value' % 1099511627776
    mem[arg1.length + ceil32(arg1.length) + 324] = arg1.length + 37
    mem[(2 * arg1.length) + ceil32(arg1.length) + 393 len floor32(arg1.length + 37)] = call.data[arg1 + 36 len floor32(arg1.length)], mem[arg1.length + ceil32(arg1.length) + floor32(arg1.length) + 356 len floor32(arg1.length + 37) - floor32(arg1.length)]
    mem[(2 * arg1.length) + ceil32(arg1.length) + floor32(arg1.length + 37) + -(arg1.length + 37 % 32) + 425 len arg1.length + 37 % 32] = mem[arg1.length + ceil32(arg1.length) + floor32(arg1.length + 37) + -(arg1.length + 37 % 32) + 388 len arg1.length + 37 % 32]
    _530 = sha3(sha3(mem[(2 * arg1.length) + ceil32(arg1.length) + 393 len arg1.length + 37]), 1)
    mem[(2 * arg1.length) + ceil32(arg1.length) + 393] = 5
    mem[(2 * arg1.length) + ceil32(arg1.length) + 425] = 'price'
    mem[(2 * arg1.length) + ceil32(arg1.length) + 489 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[(2 * arg1.length) + ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 521 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
    mem[(4 * arg1.length) + ceil32(arg1.length) + 489] = arg2
    mem[(4 * arg1.length) + ceil32(arg1.length) + 521 len 0] = None
    mem[(4 * arg1.length) + ceil32(arg1.length) + 548 len 5] = 'price' % 1099511627776
    mem[(2 * arg1.length) + ceil32(arg1.length) + 457] = (2 * arg1.length) + 37
    mem[(4 * arg1.length) + ceil32(arg1.length) + 526 len floor32((2 * arg1.length) + 37)] = call.data[arg1 + 36 len floor32(arg1.length)], mem[(2 * arg1.length) + ceil32(arg1.length) + floor32(arg1.length) + 489 len floor32((2 * arg1.length) + 37) - floor32(arg1.length)]
    mem[(4 * arg1.length) + ceil32(arg1.length) + floor32((2 * arg1.length) + 37) + -((2 * arg1.length) + 37 % 32) + 558 len (2 * arg1.length) + 37 % 32] = mem[(2 * arg1.length) + ceil32(arg1.length) + floor32((2 * arg1.length) + 37) + -((2 * arg1.length) + 37 % 32) + 521 len (2 * arg1.length) + 37 % 32]
    mem[0] = sha3(mem[(4 * arg1.length) + ceil32(arg1.length) + 526 len (2 * arg1.length) + 37])
    _709 = sha3(sha3(mem[(4 * arg1.length) + ceil32(arg1.length) + 526 len (2 * arg1.length) + 37]), 1)
    mem[(4 * arg1.length) + ceil32(arg1.length) + 526] = 10
    mem[(4 * arg1.length) + ceil32(arg1.length) + 558] = 'durability'
    mem[(4 * arg1.length) + ceil32(arg1.length) + 622 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[(4 * arg1.length) + ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 654 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
    mem[(6 * arg1.length) + ceil32(arg1.length) + 622] = arg2
    mem[(6 * arg1.length) + ceil32(arg1.length) + 654 len 0] = None
    mem[(4 * arg1.length) + ceil32(arg1.length) + 590] = (6 * arg1.length) + 42
    mem[(6 * arg1.length) + ceil32(arg1.length) + 664 len floor32((6 * arg1.length) + 42)] = call.data[arg1 + 36 len floor32(arg1.length)], mem[(4 * arg1.length) + ceil32(arg1.length) + floor32(arg1.length) + 622 len floor32((6 * arg1.length) + 42) - floor32(arg1.length)]
    mem[(6 * arg1.length) + ceil32(arg1.length) + floor32((6 * arg1.length) + 42) + -((6 * arg1.length) + 42 % 32) + 696 len (6 * arg1.length) + 42 % 32] = mem[(4 * arg1.length) + ceil32(arg1.length) + -((6 * arg1.length) + 42 % 32) + floor32((6 * arg1.length) + 42) + 654 len (6 * arg1.length) + 42 % 32]
    mem[32] = 1
    _831 = sha3(sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[(4 * arg1.length) + ceil32(arg1.length) + floor32(arg1.length) + 622 len floor32((6 * arg1.length) + 42) - floor32(arg1.length)], mem[(6 * arg1.length) + ceil32(arg1.length) + floor32((6 * arg1.length) + 42) + 664 len (6 * arg1.length) + -floor32((6 * arg1.length) + 42) + 42]), 1)
    mem[64] = (6 * arg1.length) + ceil32(arg1.length) + ceil32(stor[_294].length) + 696
    mem[(6 * arg1.length) + ceil32(arg1.length) + 664] = stor[_294].length
    mem[(6 * arg1.length) + ceil32(arg1.length) + 696] = uint256(stor[sha3(_294)])
    idx = (6 * arg1.length) + ceil32(arg1.length) + 696
    s = 0
    while (6 * arg1.length) + ceil32(arg1.length) + stor[_294].length + 664 > idx:
        mem[idx + 32] = uint256(stor[s + sha3(_294) + 1])
        idx = idx + 32
        s = s + 1
        continue 
    mem[(6 * arg1.length) + ceil32(arg1.length) + ceil32(stor[_294].length) + 696] = arg2
    mem[(6 * arg1.length) + ceil32(arg1.length) + ceil32(stor[_294].length) + 760] = uint256(stor[_530])
    mem[(6 * arg1.length) + ceil32(arg1.length) + ceil32(stor[_294].length) + 792] = uint256(stor[_709])
    mem[(6 * arg1.length) + ceil32(arg1.length) + ceil32(stor[_294].length) + 824] = uint256(stor[_831])
    mem[(6 * arg1.length) + ceil32(arg1.length) + ceil32(stor[_294].length) + 728] = 160
    mem[(6 * arg1.length) + ceil32(arg1.length) + ceil32(stor[_294].length) + 856] = stor[_294].length
    mem[(6 * arg1.length) + ceil32(arg1.length) + ceil32(stor[_294].length) + 888 len ceil32(stor[_294].length)] = mem[(6 * arg1.length) + ceil32(arg1.length) + 696 len ceil32(stor[_294].length)]
    if not stor[_294].length % 32:
        return memory
          from (6 * arg1.length) + ceil32(arg1.length) + ceil32(stor[_294].length) + 696
           len stor[_294].length + (8 * arg1.length) + 192
    mem[floor32(stor[_294].length) + (6 * arg1.length) + ceil32(arg1.length) + ceil32(stor[_294].length) + 888] = mem[floor32(stor[_294].length) + (6 * arg1.length) + ceil32(arg1.length) + ceil32(stor[_294].length) + -stor[_294].length % 32 + 920 len stor[_294].length % 32]
    return memory
      from (6 * arg1.length) + ceil32(arg1.length) + ceil32(stor[_294].length) + 696
       len floor32(stor[_294].length) + (8 * arg1.length) + 224
}



}
