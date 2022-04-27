contract main {


// =======================  Init code  ======================


mapping of struct stor0;
uint256 stor1;
uint256 stor2;

function _fallback() {
    stor1 = code.data[2623 len 32]
    stor2 = code.data[2623 len 32]
    stor0[code.data[2623 len 32]].field_0 = msg.sender
    stor0[code.data[2623 len 32]].field_512 = block.timestamp
    emit NewRegistration(code.data[2623 len 32], msg.sender);
    return code.data[251 len 2372]
}



// =====================  Runtime code  =====================


mapping of struct resolver;
uint256 genesis;
uint256 index;

function resolver(uint256 arg1) {
    return resolver[arg1].field_256
}

function index() {
    return index
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

function registerDIN(address arg1) {
    index++
    resolver[stor2].field_0 = arg1
    resolver[stor2].field_512 = block.timestamp
    emit NewRegistration(index, arg1);
    return index
}

function selfRegisterDIN() {
    index++
    resolver[stor2].field_0 = msg.sender
    resolver[stor2].field_512 = block.timestamp
    emit NewRegistration(index, msg.sender);
    return index
}

function setOwner(uint256 arg1, address arg2) {
    require resolver[arg1].field_0 == msg.sender
    resolver[arg1].field_0 = arg2
    resolver[arg1].field_512 = block.timestamp
    emit NewOwner(arg1, arg2);
}

function setResolver(uint256 arg1, address arg2) {
    require resolver[arg1].field_0 == msg.sender
    resolver[arg1].field_256 = arg2
    resolver[arg1].field_512 = block.timestamp
    emit NewResolver(arg1, arg2);
}

function registerDINWithResolver(address arg1, address arg2) {
    index++
    resolver[stor2].field_0 = arg1
    resolver[stor2].field_256 = arg2
    resolver[stor2].field_512 = block.timestamp
    emit NewRegistration(index, arg1);
    emit NewResolver(index, arg2);
    return index
}

function selfRegisterDINWithResolver(address arg1) {
    index++
    resolver[stor2].field_0 = msg.sender
    resolver[stor2].field_256 = arg1
    resolver[stor2].field_512 = block.timestamp
    emit NewRegistration(index, msg.sender);
    emit NewResolver(index, arg1);
    return index
}



}
