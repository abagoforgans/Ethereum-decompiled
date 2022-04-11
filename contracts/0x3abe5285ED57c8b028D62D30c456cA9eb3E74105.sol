contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor2;

function _fallback() {
    stor0 = msg.sender
    stor2 = code.data[1148 len 32]
    return code.data[90 len 1058]
}



// =====================  Runtime code  =====================


address owner;
mapping of address stor1;
uint256 endDate;

function owner() {
    return owner
}

function isReturnRequested(address arg1) {
    return bool(stor1[address(arg1)])
}

function endDate() {
    return endDate
}

function _fallback() payable {
    revert
}

function changeOwner(address arg1) {
    if owner == msg.sender:
        owner = arg1
}

function getReturnAddress(address arg1) {
    if stor1[address(arg1)]:
        return stor1[address(arg1)]
    return arg1
}

function requestReturn(address arg1) {
    require block.timestamp <= endDate
    require not stor1[address(msg.sender)]
    stor1[address(msg.sender)] = arg1
    emit ReturnRequested(msg.sender, arg1);
}

function execute(address arg1, uint256 arg2, bytes arg3) {
    mem[128 len arg3.length] = arg3[all]
    if owner == msg.sender:
        mem[ceil32(arg3.length) + 128 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
        if not arg3.length % 32:
            call arg1.mem[ceil32(arg3.length) + 128 len 4] with:
               value arg2 wei
                 gas gas_remaining - 34710 wei
                args mem[ceil32(arg3.length) + 132 len arg3.length - 4]
        else:
            mem[floor32(arg3.length) + ceil32(arg3.length) + 128] = mem[floor32(arg3.length) + ceil32(arg3.length) + -(arg3.length % 32) + 160 len arg3.length % 32]
            call arg1.mem[ceil32(arg3.length) + 128 len 4] with:
               value arg2 wei
                 gas gas_remaining - 34710 wei
                args mem[ceil32(arg3.length) + 132 len floor32(arg3.length) + 28]
}



}
