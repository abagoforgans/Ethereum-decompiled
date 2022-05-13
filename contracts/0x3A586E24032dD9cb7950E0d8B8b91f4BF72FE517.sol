contract main {




// =====================  Runtime code  =====================


address owner;
mapping of address stor1;

function owner() {
    return owner
}

function _fallback() payable {
    revert
}

function sub_7dc532c5(?) {
    require msg.sender == owner
    mem[160 len 0] = None
    stor1[mem[160 len 5]] = arg1
}

function setFees(address arg1) {
    require msg.sender == owner
    mem[160 len 0] = None
    stor1[mem[160 len 4]] = arg1
}

function getFees() {
    mem[160 len 0] = None
    mem[160] = stor1[mem[160 len 4]]
    return memory
      from 160
       len 32
}

function getFeeds() {
    mem[160 len 0] = None
    mem[160] = stor1[mem[160 len 5]]
    return memory
      from 160
       len 32
}

function setSubscriptions(address arg1) {
    require msg.sender == owner
    mem[160 len 0] = None
    stor1[mem[160 len 13]] = arg1
}

function getSubscriptions() {
    mem[160 len 0] = None
    mem[160] = stor1[mem[160 len 13]]
    return memory
      from 160
       len 32
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_9255e0d6(?) {
    require msg.sender == owner
    mem[160 len 0] = None
    stor1[mem[160 len 3]][Mask(208, 24, 'ContractForDifferenceRegistry') >> 24] = arg1
}

function sub_8319a87b(?) {
    mem[160 len 0] = None
    mem[160] = stor1[mem[160 len 3]][Mask(208, 24, 'ContractForDifferenceRegistry') >> 24]
    return memory
      from 160
       len 32
}

function set(string arg1, address arg2) {
    mem[128 len arg1.length] = arg1[all]
    require msg.sender == owner
    mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32] = mem[-(arg1.length % 32) + floor32(arg1.length) + 160 len arg1.length % 32]
    stor1[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len arg1.length % 32]] = arg2
}

function get(string arg1) {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32] = mem[-(arg1.length % 32) + floor32(arg1.length) + 160 len arg1.length % 32]
    mem[ceil32(arg1.length) + 128] = stor1[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len arg1.length % 32]]
    return memory
      from ceil32(arg1.length) + 128
       len 32
}



}
