contract main {


// =======================  Init code  ======================


address stor1;
uint256 stor1;
mapping of uint256 stor4;

function _fallback() payable {
    uint256(stor1) = msg.sender or Mask(96, 160, uint256(stor1))
    call 0x985509582b2c38010bfaa3c8d2be60022d3d00da.register(bytes32 rg1) with:
         gas gas_remaining - 25050 wei
        args 'ether-camp/price-feed'
    require ext_call.success
    if address(stor1) == msg.sender:
        stor4[address(msg.sender)] = 1
    return code.data[225 len 979]
}



// =====================  Runtime code  =====================


const nameRegAddress = 0x985509582b2c38010bfaa3c8d2be60022d3d00da


uint256 updateTime;
address stor1;
uint256 stor1;
mapping of uint256 price;
mapping of uint256 timestamp;
mapping of uint256 stor4;

function getPrice(bytes32 arg1) payable {
    return price[arg1]
}

function getTimestamp(bytes32 arg1) payable {
    return timestamp[arg1]
}

function updateTime() payable {
    return updateTime
}

function kill() payable {
    if address(stor1) != msg.sender:
    selfdestruct(address(stor1))
}

function _fallback() payable {
  stop
}

function addUpdater(address arg1) payable {
    if msg.sender == address(stor1):
        stor4[address(arg1)] = 1
}

function removeUpdater(address arg1) payable {
    if msg.sender == address(stor1):
        stor4[address(arg1)] = 0
}

function changeOwner(address arg1) payable {
    if msg.sender == address(stor1):
        uint256(stor1) = arg1 or Mask(96, 160, uint256(stor1))
}

function named(bytes32 arg1) payable {
    call 0x985509582b2c38010bfaa3c8d2be60022d3d00da.addressOf(bytes32 rg1) with:
         gas gas_remaining - 25050 wei
        args arg1
    require ext_call.success
    return ext_call.return_data[12 len 20]
}

function sub_d5064ed1(?) payable {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg2.length) + (32 * arg1.length) + 160] = arg3.length
    mem[(32 * arg2.length) + (32 * arg1.length) + 192 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    if 1 == stor4[address(msg.sender)]:
        updateTime = block.timestamp
        idx = 0
        while idx < arg1.length:
            require idx < arg2.length
            require idx < arg1.length
            price[mem[(32 * idx) + 128]] = mem[(32 * idx) + (32 * arg1.length) + 160]
            require idx < arg3.length
            require idx < arg1.length
            mem[0] = mem[(32 * idx) + 128]
            mem[32] = 3
            timestamp[mem[(32 * idx) + 128]] = mem[(32 * idx) + (32 * arg2.length) + (32 * arg1.length) + 192]
            idx = idx + 1
            continue 
}



}
