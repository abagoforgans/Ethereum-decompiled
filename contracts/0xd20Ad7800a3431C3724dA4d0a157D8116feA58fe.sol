contract main {


// =======================  Init code  ======================


uint256 stor0;

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    return code.data[36 len 1726]
}



// =====================  Runtime code  =====================


address owner;
uint256 stor0;
mapping of uint8 stor1;
mapping of uint256 accountBalances;

function accountBalances(address arg1) {
    return accountBalances[arg1]
}

function owner() {
    return address(owner)
}

function _fallback() payable {
    accountBalances[address(msg.sender)] += msg.value
}

function deposit(address arg1) payable {
    accountBalances[address(arg1)] += msg.value
}

function sub_36b196cf(?) {
    require address(owner) == msg.sender
    stor1[address(arg1)] = 1
}

function sub_66bc5fa8(?) {
    require address(owner) == msg.sender
    stor1[address(arg1)] = 1
}

function transferOwner(address arg1) {
    require address(owner) == msg.sender
    uint256(stor0) = arg1 or Mask(96, 160, uint256(stor0))
}

function withdraw(address arg1, uint256 arg2) {
    require stor1[address(msg.sender)]
    call arg1 with:
       value arg2 wei
         gas gas_remaining - 34050 wei
    require ext_call.success
}

function withdrawFrom(address arg1, address arg2, uint256 arg3) {
    require stor1[address(msg.sender)]
    require arg3 <= accountBalances[address(arg1)]
    require ext_code.size(0xd4a572d216ebfd9aec79f81d7e9841d0f61e3420)
    delegate 0xd4a572d216ebfd9aec79f81d7e9841d0f61e3420.0x3ef5e445 with:
         gas gas_remaining - 50 wei
        args accountBalances[address(arg1)], arg3
    require delegate.return_code
    accountBalances[address(arg1)] = delegate.return_data[0]
    call arg2 with:
       value arg3 wei
         gas gas_remaining - 34050 wei
    require ext_call.success
}

function sub_506d994b(?) {
    require stor1[address(msg.sender)]
    require arg3 <= accountBalances[address(arg1)]
    require ext_code.size(0xd4a572d216ebfd9aec79f81d7e9841d0f61e3420)
    delegate 0xd4a572d216ebfd9aec79f81d7e9841d0f61e3420.0x3ef5e445 with:
         gas gas_remaining - 50 wei
        args accountBalances[address(arg1)], arg3
    require delegate.return_code
    accountBalances[address(arg1)] = delegate.return_data[0]
    call arg2 with:
       funct Mask(32, 224, sha3(arg4[all])) >> 224
       value arg3 wei
         gas gas_remaining - 34050 wei
    require ext_call.success
}

function transfer(address arg1, address arg2, uint256 arg3) {
    require stor1[address(msg.sender)]
    require arg3 <= accountBalances[address(arg1)]
    require ext_code.size(0xd4a572d216ebfd9aec79f81d7e9841d0f61e3420)
    delegate 0xd4a572d216ebfd9aec79f81d7e9841d0f61e3420.0x3ef5e445 with:
         gas gas_remaining - 50 wei
        args accountBalances[address(arg1)], arg3
    require delegate.return_code
    accountBalances[address(arg1)] = delegate.return_data[0]
    require ext_code.size(0xd4a572d216ebfd9aec79f81d7e9841d0f61e3420)
    delegate 0xd4a572d216ebfd9aec79f81d7e9841d0f61e3420.0x771602f7 with:
         gas gas_remaining - 50 wei
        args accountBalances[arg2], arg3
    require delegate.return_code
    accountBalances[address(arg2)] = delegate.return_data[0]
}



}
