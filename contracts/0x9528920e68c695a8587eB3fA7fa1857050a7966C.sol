contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function exit() {
    require 0x9795c2d3e7fb9f9c0fc15a949bf4dcaf5b50db1c == msg.sender
    require ext_code.size(0xb3775fb83f7d12a36e0475abdd1fca35c091efbe)
    call 0xb3775fb83f7d12a36e0475abdd1fca35c091efbe.0xe9fad8ee with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
}

function sub_38c33314(?) {
    require ext_code.size(0xb3775fb83f7d12a36e0475abdd1fca35c091efbe)
    call 0xb3775fb83f7d12a36e0475abdd1fca35c091efbe.0x10d0ffdd with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0xb3775fb83f7d12a36e0475abdd1fca35c091efbe)
    call 0xb3775fb83f7d12a36e0475abdd1fca35c091efbe.0x56d399e8 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < ext_call.return_data[0]:
        return 0
    require ext_code.size(0xb3775fb83f7d12a36e0475abdd1fca35c091efbe)
    call 0xb3775fb83f7d12a36e0475abdd1fca35c091efbe.0x22609373 with:
         gas gas_remaining wei
        args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0xc7029ed9eba97a096e72607f4340c34049c7af48)
    call 0xc7029ed9eba97a096e72607f4340c34049c7af48.balances() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require 430000 * arg2 / 430000 == arg2
    require ext_call.return_data[0] + (ext_call.return_data[0] / 10 / 3) >= ext_call.return_data[0] / 10 / 3
    require arg1 / 10 / 3 >= 0
    require 430000 * arg2 <= (arg1 / 10 / 3) + ext_call.return_data[0] + (ext_call.return_data[0] / 10 / 3)
    if (arg1 / 10 / 3) + ext_call.return_data[0] + (ext_call.return_data[0] / 10 / 3) - (430000 * arg2) <= arg1:
        return 0
    return 1
}

function run() payable {
    require 0x9795c2d3e7fb9f9c0fc15a949bf4dcaf5b50db1c == msg.sender
    require ext_code.size(0xb3775fb83f7d12a36e0475abdd1fca35c091efbe)
    call 0xb3775fb83f7d12a36e0475abdd1fca35c091efbe.0x10d0ffdd with:
         gas gas_remaining wei
        args msg.value
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0xb3775fb83f7d12a36e0475abdd1fca35c091efbe)
    call 0xb3775fb83f7d12a36e0475abdd1fca35c091efbe.0x56d399e8 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'Will not make a profit'
    require ext_code.size(0xb3775fb83f7d12a36e0475abdd1fca35c091efbe)
    call 0xb3775fb83f7d12a36e0475abdd1fca35c091efbe.0x22609373 with:
         gas gas_remaining wei
        args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0xc7029ed9eba97a096e72607f4340c34049c7af48)
    call 0xc7029ed9eba97a096e72607f4340c34049c7af48.balances() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require 430000 * block.gasprice / 430000 == block.gasprice
    require ext_call.return_data[0] + (ext_call.return_data[0] / 10 / 3) >= ext_call.return_data[0] / 10 / 3
    require msg.value / 10 / 3 >= 0
    require 430000 * block.gasprice <= (msg.value / 10 / 3) + ext_call.return_data[0] + (ext_call.return_data[0] / 10 / 3)
    if (msg.value / 10 / 3) + ext_call.return_data[0] + (ext_call.return_data[0] / 10 / 3) - (430000 * block.gasprice) <= msg.value:
        revert with 0, 'Will not make a profit'
    create contract with callvalue wei
                    code: 0x608060408190527ff088d547000000000000000000000000000000000000000000000000000000008152739795c2d3e7fb9f9c0fc15a949bf4dcaf5b50db1c60845273b3775fb83f7d12a36e0475abdd1fca35c091efbe9063f088d54790349060a4906020906024818588803b15801561007857600080fd5b505af115801561008c573d6000803e3d6000fd5b50505050506040513d60208110156100a357600080fd5b5050604080517f91c05b0b00000000000000000000000000000000000000000000000000000000815260016004820152905173c7029ed9eba97a096e72607f4340c34049c7af48916391c05b0b91602480830192600092919082900301818387803b15801561011157600080fd5b505af1158015610125573d6000803e3d6000fd5b5050505073b3775fb83f7d12a36e0475abdd1fca35c091efbe600160a060020a031663e9fad8ee6040518163ffffffff167c0100000000000000000000000000000000000000000000000000000000028152600401600060405180830381600087803b15801561019457600080fd5b505af11580156101a8573d6000803e3d6000fd5b503392505050ff
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
