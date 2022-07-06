contract main {




// =====================  Runtime code  =====================


const sub_18f452b8(?) = 'toUSD'

const endpoint = 'CoinCap.io Datafeed'

const sub_9078ed6f(?) = 0xf02491e199565b9822ecf001eb6a336959d655c8


address owner;
address coordinatorAddress;
uint256 stor2;
uint256 stor3;
address stor4;
address stor5;

function coordinator() {
    return coordinatorAddress
}

function owner() {
    return owner
}

function _fallback() payable {
  stop
}

function sub_99ff48af(?) {
    require calldata.size - 4 >= 64
    require cd[36] <= 4294967296
    require cd[36] + 36 <= calldata.size
    require ('cd', 36).length <= 4294967296 and cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    if 0xf02491e199565b9822ecf001eb6a336959d655c8 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only accept response from Coincap provider'
    if cd[4] != stor2:
        revert with 0, 'Wrong query Id'
    require 0 < ('cd', 36).length
    emit 0xd47ea870: cd[4], ('cd', 36)[0], stor3
    require 0 < ('cd', 36).length
    if not stor3:
        stor3 = ('cd', 36)[0]
    else:
        if ('cd', 36)[0] <= stor3:
            call stor5 with:
               value eth.balance(this.address) wei
                 gas 2300 * is_zero(value) wei
        else:
            call stor4 with:
               value eth.balance(this.address) wei
                 gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        stor3 = 0
}

function sub_4b425ec1(?) {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    require ext_code.size(coordinatorAddress)
    staticcall coordinatorAddress.getContract(string arg1) with:
            gas gas_remaining wei
           args Array(len=8, data='DISPATCH')
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(32 * arg1.length) + 420 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).query(address arg1, string arg2, bytes32 arg3, bytes32[] arg4) with:
         gas gas_remaining wei
        args 0xf02491e199565b9822ecf001eb6a336959d655c8, 128, 'CoinCap.io Datafeed', 192, 5, 'toUSD' << 216, arg1.length, call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + floor32(arg1.length) + 420 len (32 * arg1.length) - floor32(arg1.length)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    stor2 = ext_call.return_data[0]
    emit 0x1ee1088a: stor2
    return stor2
}



}
