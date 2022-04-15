contract main {


// =======================  Init code  ======================


mapping of struct stor0;
uint256 stor2;

function _fallback() {
    stor2 = code.data[2413 len 32]
    stor0[stor2].field_0 = msg.sender
    stor0[stor2].field_512 = block.timestamp
    emit NewRegistration(stor2, msg.sender);
    return code.data[253 len 2160]
}



// =====================  Runtime code  =====================


mapping of struct resolver;
address registrarAddress;
uint256 genesis;

function resolver(uint256 arg1) {
    return resolver[arg1].field_256
}

function registrar() {
    return registrarAddress
}

function owner(uint256 arg1) {
    return resolver[arg1].field_0
}

function genesis() {
    return genesis
}

function updated(uint256 arg1) {
    return resolver[arg1].field_512
}

function _fallback() payable {
    revert
}

function setRegistrar(address arg1) {
    require resolver[stor2].field_0 == msg.sender
    registrarAddress = arg1
    emit NewRegistrar(arg1);
}

function setOwner(uint256 arg1, address arg2) {
    require resolver[arg1].field_0 == msg.sender
    resolver[arg1].field_0 = arg2
    resolver[arg1].field_512 = block.timestamp
    emit NewOwner(arg1, arg2);
}

function register(uint256 arg1, address arg2) {
    require registrarAddress == msg.sender
    resolver[arg1].field_0 = arg2
    resolver[arg1].field_512 = block.timestamp
    emit NewRegistration(arg1, arg2);
}

function setResolver(uint256 arg1, address arg2) {
    require resolver[arg1].field_0 == msg.sender
    resolver[arg1].field_256 = arg2
    resolver[arg1].field_512 = block.timestamp
    emit NewResolver(arg1, arg2);
}



}
