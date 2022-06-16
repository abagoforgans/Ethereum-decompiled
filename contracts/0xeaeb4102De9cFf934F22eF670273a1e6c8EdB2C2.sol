contract main {




// =====================  Runtime code  =====================


mapping of uint8 stor0;
uint8 stor1;
address sub_36c499c5Address; offset 8
mapping of struct sub_e8a59cd8;

function sub_36c499c5(?) {
    return sub_36c499c5Address
}

function isPauser(address arg1) {
    require calldata.size - 4 >= 32
    require arg1
    return bool(stor0[address(arg1)])
}

function paused() {
    return bool(stor1)
}

function getStore(uint256 arg1) {
    require calldata.size - 4 >= 32
    require 0 < sub_e8a59cd8[arg1].field_0
    require sub_e8a59cd8[arg1].field_128 < block.number
    require block.number < sub_e8a59cd8[arg1].field_160
    return sub_e8a59cd8[arg1].field_0, sub_e8a59cd8[arg1].field_0, sub_e8a59cd8[arg1].field_160
}

function sub_e8a59cd8(?) {
    require calldata.size - 4 >= 32
    return sub_e8a59cd8[arg1].field_0, sub_e8a59cd8[arg1].field_0, sub_e8a59cd8[arg1].field_160
}

function destroy() {
    require ext_code.size(sub_36c499c5Address)
    staticcall sub_36c499c5Address.cooAddress() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != msg.sender:
        require ext_code.size(sub_36c499c5Address)
        staticcall sub_36c499c5Address.ceoAddress() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[12 len 20] != msg.sender:
            require ext_code.size(sub_36c499c5Address)
            staticcall sub_36c499c5Address.cfoAddress() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require msg.sender == ext_call.return_data[12 len 20]
    selfdestruct(msg.sender)
}

function _fallback() payable {
    revert
}

function unpause() {
    require msg.sender
    require stor0[address(msg.sender)]
    require stor1
    stor1 = 0
    emit Unpaused(msg.sender);
}

function pause() {
    require msg.sender
    require stor0[address(msg.sender)]
    require not stor1
    stor1 = 1
    emit Paused(msg.sender);
}

function renouncePauser() {
    require msg.sender
    require stor0[address(msg.sender)]
    stor0[address(msg.sender)] = 0
    emit PauserRemoved(msg.sender);
}

function addPauser(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender
    require stor0[address(msg.sender)]
    require arg1
    if stor0[address(arg1)]:
        revert with 0, 'This account is already added'
    stor0[address(arg1)] = 1
    emit PauserAdded(arg1);
}

function sub_6bb9f689(?) {
    require calldata.size - 4 >= 64
    require ext_code.size(sub_36c499c5Address)
    staticcall sub_36c499c5Address.0x19fd5c51 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require msg.sender == ext_call.return_data[12 len 20]
    if 0 >= sub_e8a59cd8[arg1].field_0:
        revert with 0, 'store must exist'
    if 0 >= arg2:
        revert with 0, 'price can not zero'
    sub_e8a59cd8[arg1].field_0 = uint128(arg2)
    emit 0x9b3570a7: arg1, 0, arg2, sub_e8a59cd8[arg1].field_0, sub_e8a59cd8[arg1].field_160
}

function sub_7cc69325(?) {
    require calldata.size - 4 >= 32
    require ext_code.size(sub_36c499c5Address)
    staticcall sub_36c499c5Address.0x19fd5c51 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require msg.sender == ext_call.return_data[12 len 20]
    if sub_e8a59cd8[arg1].field_128 < block.number:
        if block.number < sub_e8a59cd8[arg1].field_160:
            revert with 0, 'store should be closed'
    if 0 >= sub_e8a59cd8[arg1].field_0:
        revert with 0, 'store must exist'
    sub_e8a59cd8[arg1].field_0 = 0
    sub_e8a59cd8[arg1].field_128 = 0
    sub_e8a59cd8[arg1].field_160 = 0
    emit 0x5da550bd: arg1
}

function sub_83d1c802(?) {
    require calldata.size - 4 >= 64
    require ext_code.size(sub_36c499c5Address)
    staticcall sub_36c499c5Address.0x19fd5c51 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require msg.sender == ext_call.return_data[12 len 20]
    if 0 >= sub_e8a59cd8[arg1].field_0:
        revert with 0, 'store must exist'
    if sub_e8a59cd8[arg1].field_128 >= arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'startSaleBlockNum < endSaleBlockNum should be'
    if block.number >= arg2:
        revert with 0, 'end block should be future'
    sub_e8a59cd8[arg1].field_160 = uint32(arg2)
    emit 0x9b3570a7: arg1, 2, sub_e8a59cd8[arg1].field_0, sub_e8a59cd8[arg1].field_0, arg2
}

function pay(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require not stor1
    if 0 >= msg.value:
        revert with 0, 'send ether must be above 0'
    require 0 < sub_e8a59cd8[arg1].field_0
    require sub_e8a59cd8[arg1].field_128 < block.number
    require block.number < sub_e8a59cd8[arg1].field_160
    if sub_e8a59cd8[arg1].field_0 > msg.value:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'ether which payer send must be higher than or equal to price'
    if sub_e8a59cd8[arg1].field_0 < msg.value:
        require sub_e8a59cd8[arg1].field_0 <= msg.value
        call msg.sender with:
           value msg.value - sub_e8a59cd8[arg1].field_0 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    emit 0x2b7e43de: arg1, sub_e8a59cd8[arg1].field_0, msg.sender
}

function sub_7b41ec37(?) {
    require calldata.size - 4 >= 64
    require ext_code.size(sub_36c499c5Address)
    staticcall sub_36c499c5Address.0x19fd5c51 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require msg.sender == ext_call.return_data[12 len 20]
    if 0 >= sub_e8a59cd8[arg1].field_0:
        revert with 0, 'store must exist'
    if arg2 >= sub_e8a59cd8[arg1].field_160:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'startSaleBlockNum < endSaleBlockNum should be'
    if block.number >= sub_e8a59cd8[arg1].field_128:
        revert with 0, 'store should not be started'
    if block.number >= arg2:
        revert with 0, 'start block should be future'
    sub_e8a59cd8[arg1].field_128 = uint32(arg2)
    emit 0x9b3570a7: arg1, 1, sub_e8a59cd8[arg1].field_0, arg2, sub_e8a59cd8[arg1].field_160
}

function sub_df322af6(?) {
    require calldata.size - 4 >= 128
    require ext_code.size(sub_36c499c5Address)
    staticcall sub_36c499c5Address.0x19fd5c51 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require msg.sender == ext_call.return_data[12 len 20]
    if block.number >= arg3:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'startSaleBlockNum should be future'
    if arg3 >= arg4:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'startSaleBlockNum < endSaleBlockNum should be'
    if 0 < sub_e8a59cd8[arg1].field_0:
        revert with 0, 'store must NEVER exist'
    if 0 >= arg2:
        revert with 0, 'price must above 0'
    sub_e8a59cd8[arg1].field_0 = uint128(arg2)
    sub_e8a59cd8[arg1].field_128 = uint32(arg3)
    sub_e8a59cd8[arg1].field_160 = uint32(arg4)
    emit 0x22856ec8: arg1, arg2 << 128, arg3 << 224, uint32(arg4)
}

function withdrawBalance() {
    require ext_code.size(sub_36c499c5Address)
    staticcall sub_36c499c5Address.cooAddress() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != msg.sender:
        require ext_code.size(sub_36c499c5Address)
        staticcall sub_36c499c5Address.ceoAddress() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[12 len 20] != msg.sender:
            require ext_code.size(sub_36c499c5Address)
            staticcall sub_36c499c5Address.cfoAddress() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[12 len 20] != msg.sender:
                require ext_code.size(sub_36c499c5Address)
                staticcall sub_36c499c5Address.0x19fd5c51 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require msg.sender == ext_call.return_data[12 len 20]
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
