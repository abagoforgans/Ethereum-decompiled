contract main {


// =======================  Init code  ======================


address stor0;
mapping of uint8 stor1;

function _fallback() {
    stor0 = msg.sender
    require stor0 == msg.sender
    stor1[code.data[2055 len 20]] = 1
    require code.data[2055 len 20]
    emit OwnershipTransferred(stor0, code.data[2055 len 20]);
    stor0 = code.data[2055 len 20]
    return code.data[344 len 1699]
}



// =====================  Runtime code  =====================


address owner;
mapping of uint8 stor1;
mapping of struct registry;
mapping of struct lookupByProject;

function project_registry(uint256 arg1) {
    return lookupByProject[arg1].field_0, lookupByProject[arg1].field_256, lookupByProject[arg1].field_512
}

function lookupByProject(uint256 arg1) {
    return lookupByProject[arg1].field_0, lookupByProject[arg1].field_256, lookupByProject[arg1].field_512
}

function registrars(address arg1) {
    return bool(stor1[arg1])
}

function owner() {
    return owner
}

function lookup(address arg1, uint256 arg2) {
    return registry[address(arg1)][arg2].field_0, registry[address(arg1)][arg2].field_256, registry[address(arg1)][arg2].field_512
}

function registry(address arg1, uint256 arg2) {
    return registry[arg1][arg2].field_0, registry[arg1][arg2].field_256, registry[arg1][arg2].field_512
}

function _fallback() payable {
    revert
}

function setRegistrar(address arg1, bool arg2) {
    require owner == msg.sender
    stor1[address(arg1)] = uint8(arg2)
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function register(address arg1, uint256 arg2, address arg3) {
    require stor1[address(msg.sender)]
    registry[address(arg1)][arg2].field_512 = arg3
    lookupByProject[arg2].field_512 = arg3
    emit RegisteredCampaign(arg3, arg1, arg2);
}

function register(address arg1, uint256 arg2, address arg3, address arg4) {
    require stor1[address(msg.sender)]
    registry[address(arg1)][arg2].field_0 = arg3
    registry[address(arg1)][arg2].field_256 = arg4
    lookupByProject[arg2].field_0 = arg3
    lookupByProject[arg2].field_256 = arg4
    emit RegisteredToken(address(arg3), arg4, arg1, arg2);
}



}
