contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor0;
mapping of uint256 stor3;
uint256 stor4F89;

function _fallback() payable {
    uint256(stor0) = msg.sender or Mask(96, 160, uint256(stor0))
    if msg.sender == address(stor0):
        stor3['settings/rate'] = 10280
        emit AddConfigEntryI('settings/rate', 10280, msg.sender);
        stor3['settings/base'] = 10^9
        emit AddConfigEntryI('settings/base', 10^9, msg.sender);
        stor3['settings/confirmations'] = 10
        emit AddConfigEntryI('settings/confirmations', 10, msg.sender);
        stor3['settings/billingperiod'] = 24 * 3600
        emit AddConfigEntryI('settings/billingperiod', 24 * 3600, msg.sender);
        stor3['settings/recastfee'] = 10 * 10^6
        emit AddConfigEntryI('settings/recastfee', 10 * 10^6, msg.sender);
        stor3['settings/redemptionfee'] = 2 * 10^9
        emit AddConfigEntryI('settings/redemptionfee', 2 * 10^9, msg.sender);
        stor3['settings/txfee'] = 1300000
        emit AddConfigEntryI('settings/txfee', 1300000, msg.sender);
        stor3['settings/txfeemax'] = 10^9
        emit AddConfigEntryI('settings/txfeemax', 10^9, msg.sender);
        stor4F89 = 'ZAUFS00476'
        emit 0xb9a320eb: 'settings/nonmintsku', 'ZAUFS00476', msg.sender
    return code.data[708 len 1290]
}



// =====================  Runtime code  =====================


address owner;
uint256 stor0;
mapping of address configEntryAddr;
mapping of uint256 configEntryInt;
mapping of uint256 sub_a3f92bc6;

function getConfigEntryAddr(bytes32 arg1) payable {
    return address(configEntryAddr[arg1])
}

function getConfigEntryInt(bytes32 arg1) payable {
    return configEntryInt[arg1]
}

function getOwner() payable {
    return address(owner)
}

function sub_a3f92bc6(?) payable {
    return sub_a3f92bc6[arg1]
}

function _fallback() payable {
  stop
}

function sub_bab42303(?) payable {
    if address(owner) != msg.sender:
        return 0
    sub_a3f92bc6[arg1] = arg2
    emit 0xb9a320eb: arg1, arg2, msg.sender
    return 1
}

function setOwner(address arg1) payable {
    if msg.sender == address(owner):
        uint256(stor0) = arg1 or Mask(96, 160, uint256(stor0))
        emit SetOwner(arg1, msg.sender);
}

function addConfigEntryInt(bytes32 arg1, uint256 arg2) payable {
    if address(owner) != msg.sender:
        return 0
    configEntryInt[arg1] = arg2
    emit AddConfigEntryI(arg1, arg2, msg.sender);
    return 1
}

function isAdmin(address arg1) payable {
    codecall 0x3700a8e6acdc6bc88cb655a0947d48ed722961d8.0x186110f2 with:
         gas gas_remaining - 50 wei
        args 1, arg1
    require callcode.return_code
    return callcode.return_data[0]
}

function addConfigEntryAddr(bytes32 arg1, address arg2) payable {
    if address(owner) != msg.sender:
        return 0
    uint256(configEntryAddr[arg1]) = arg2 or Mask(96, 160, uint256(configEntryAddr[arg1]))
    emit AddConfigEntryA(arg1, arg2, msg.sender);
    return 1
}

function unregisterAdmin(address arg1) payable {
    if msg.sender == address(owner):
        codecall 0x3700a8e6acdc6bc88cb655a0947d48ed722961d8.0x934a11b2 with:
             gas gas_remaining - 50 wei
            args 1, arg1
        require callcode.return_code
        require callcode.return_data[0]
        emit UnregisterAdmin(arg1, msg.sender);
}

function registerAdmin(address arg1) payable {
    if address(owner) != msg.sender:
        return 0
    codecall 0x3700a8e6acdc6bc88cb655a0947d48ed722961d8.0xccd7ef98 with:
         gas gas_remaining - 50 wei
        args 1, arg1
    require callcode.return_code
    require callcode.return_data[0]
    emit RegisterAdmin(arg1, msg.sender);
    return 1
}



}
