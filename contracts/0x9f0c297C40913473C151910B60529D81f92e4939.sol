contract main {




// =====================  Runtime code  =====================


address owner;
mapping of struct moduleInfo;
mapping of struct upgraderInfo;

function isRegisteredModule(address arg1) {
    return bool(moduleInfo[address(arg1)].field_0)
}

function moduleInfo(address arg1) {
    return moduleInfo[address(arg1)].field_256
}

function isRegisteredUpgrader(address arg1) {
    return bool(upgraderInfo[address(arg1)].field_0)
}

function owner() {
    return owner
}

function upgraderInfo(address arg1) {
    return upgraderInfo[address(arg1)].field_256
}

function _fallback() payable {
    revert
}

function changeOwner(address arg1) {
    if owner != msg.sender:
        revert with 0, 'Must be owner'
    if not arg1:
        revert with 0, 'Address must not be null'
    owner = arg1
    emit OwnerChanged(arg1);
}

function isRegisteredModule(address[] arg1) {
    idx = 0
    while idx < arg1.length:
        mem[0] = address(cd[((32 * idx) + arg1 + 36)])
        mem[32] = 1
        if moduleInfo[address(cd[((32 * idx) + arg1 + 36)])].field_0:
            idx = idx + 1
            continue 
        else:
            return 0
    return 1
}

function deregisterModule(address arg1) {
    if owner != msg.sender:
        revert with 0, 'Must be owner'
    if not moduleInfo[address(arg1)].field_0:
        revert with 0, 'MR: module does not exists'
    moduleInfo[address(arg1)].field_0 = 0
    moduleInfo[address(arg1)].field_256 = 0
    emit ModuleDeRegistered(arg1);
}

function deregisterUpgrader(address arg1) {
    if owner != msg.sender:
        revert with 0, 'Must be owner'
    if not upgraderInfo[address(arg1)].field_0:
        revert with 0, 'MR: upgrader does not exists'
    upgraderInfo[address(arg1)].field_0 = 0
    upgraderInfo[address(arg1)].field_256 = 0
    emit UpgraderDeRegistered(arg1);
}

function registerModule(address arg1, bytes32 arg2) {
    if owner != msg.sender:
        revert with 0, 'Must be owner'
    if moduleInfo[address(arg1)].field_0:
        revert with 0, 'MR: module already exists'
    moduleInfo[address(arg1)].field_0 = 1
    moduleInfo[address(arg1)].field_256 = arg2
    emit ModuleRegistered(arg2, arg1);
}

function registerUpgrader(address arg1, bytes32 arg2) {
    if owner != msg.sender:
        revert with 0, 'Must be owner'
    if upgraderInfo[address(arg1)].field_0:
        revert with 0, 'MR: upgrader already exists'
    upgraderInfo[address(arg1)].field_0 = 1
    upgraderInfo[address(arg1)].field_256 = arg2
    emit UpgraderRegistered(arg2, arg1);
}

function recoverToken(address arg1) {
    if owner != msg.sender:
        revert with 0, 'Must be owner'
    require ext_code.size(arg1)
    call arg1.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}



}
