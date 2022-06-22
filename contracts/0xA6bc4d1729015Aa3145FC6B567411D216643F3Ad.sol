contract main {




// =====================  Runtime code  =====================


#
#  - sub_7e079ace(?)
#
const getBalance = eth.balance(this.address)

const GST2 = 0xb3f879cb30fe243b4dfee438691c04


address owner;
address controllerAddress;
uint256 count;
uint8 stor3;
uint256 stor3;
uint256 sub_58973576;
mapping of uint256 sub_38da689e;
mapping of address sub_05e75335;

function sub_05e75335(?) {
    require calldata.size - 4 >= 32
    return sub_05e75335[arg1]
}

function count() {
    return count
}

function sub_38da689e(?) {
    require calldata.size - 4 >= 32
    return sub_38da689e[arg1]
}

function sub_3b5d7e97(?) {
    return bool(uint8(stor3))
}

function sub_58973576(?) {
    return sub_58973576
}

function owner() {
    return owner
}

function controller() {
    return controllerAddress
}

function _fallback() payable {
  stop
}

function sub_b41bfe75(?) {
    require msg.sender == owner
    uint256(stor3) = not uint8(stor3) or Mask(248, 8, uint256(stor3))
}

function sub_bbad99a5(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        if controllerAddress != msg.sender:
            require this.address == msg.sender
    sub_58973576 = arg1
}

function withdraw(uint256 arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    call owner with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_e4538ae0(?) {
    require calldata.size - 4 >= 32
    require ext_code.size(arg1)
    staticcall arg1.airDropPot_() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_44a9f953(?) {
    require calldata.size - 4 >= 32
    require ext_code.size(arg1)
    staticcall arg1.airDropTracker_() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_43bf69fe(?) {
    require calldata.size - 4 >= 32
    require ext_code.size(arg1)
    staticcall arg1.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_30231ddb(?) {
    require calldata.size - 4 >= 64
    require ext_code.size(arg1)
    staticcall arg1.allowance(address arg1, address arg2) with:
            gas gas_remaining wei
           args this.address, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function approveERC20(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require msg.sender == owner
    require ext_code.size(arg1)
    call arg1.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return 0
}

function transferERC20(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require msg.sender == owner
    require ext_code.size(arg1)
    call arg1.transfer(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function mintGasTokens(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        if controllerAddress != msg.sender:
            require this.address == msg.sender
    require ext_code.size(0xb3f879cb30fe243b4dfee438691c04)
    call 0x0000000000b3f879cb30fe243b4dfee438691c04.mint(uint256 arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function deploy(bytes arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    if owner != msg.sender:
        if controllerAddress != msg.sender:
            require this.address == msg.sender
    create2 contract with 0 wei
                    salt: arg2
                    code: arg1[all]
    mem[ceil32(arg1.length) + 128] = address(create2.new_address)
    return Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
}

function sub_8778a110(?) {
    require calldata.size - 4 >= 96
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    mem[ceil32(arg2.length) + 160 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[ceil32(arg2.length) + floor32(arg2.length) + -(arg2.length % 32) + 192 len arg2.length % 32] = mem[floor32(arg2.length) + -(arg2.length % 32) + 160 len arg2.length % 32]
    mem[ceil32(arg2.length) + 128] = arg2.length
    return address(sha3(0, arg3, arg1, sha3(mem[ceil32(arg2.length) + 160 len Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]])))
}

function burnGasToken(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        if controllerAddress != msg.sender:
            require this.address == msg.sender
    require ext_code.size(0xb3f879cb30fe243b4dfee438691c04)
    staticcall 0xb3f879cb30fe243b4dfee438691c04.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < arg1:
        return 0
    require ext_code.size(0xb3f879cb30fe243b4dfee438691c04)
    call 0x0000000000b3f879cb30fe243b4dfee438691c04.free(uint256 arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function airdrop(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require block.timestamp
    if block.difficulty + block.timestamp < block.timestamp:
        revert with 0, 'SafeMath add failed'
    if sha3(block.coinbase) / block.timestamp < 0:
        revert with 0, 'SafeMath add failed'
    if block.gas_limit < 0:
        revert with 0, 'SafeMath add failed'
    if sha3(arg2) / block.timestamp < 0:
        revert with 0, 'SafeMath add failed'
    if block.number < 0:
        revert with 0, 'SafeMath add failed'
    require ext_code.size(arg1)
    staticcall arg1.airDropTracker_() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if sha3(block.number + (sha3(arg2) / block.timestamp) + block.gas_limit + (sha3(block.coinbase) / block.timestamp) + block.difficulty + block.timestamp) - (1000 * sha3(block.number + (sha3(arg2) / block.timestamp) + block.gas_limit + (sha3(block.coinbase) / block.timestamp) + block.difficulty + block.timestamp) / 1000) >= ext_call.return_data[0]:
        return 0
    return 1
}



}
