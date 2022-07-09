contract main {




// =====================  Runtime code  =====================


#
#  - sub_c356e2d4(?)
#
const walletBalance = eth.balance(this.address)


mapping of uint256 stor0;
uint256 stor1;
address stor2;
address stor5;
mapping of struct sub_fcb320a6;
array of struct stor7;

function sub_fcb320a6(?) {
    require calldata.size - 4 >= 32
    require stor0[address(msg.sender)] == 1
    require stor7.length > 0
    return sub_fcb320a6[arg1].field_0, 
           sub_fcb320a6[arg1].field_256,
           sub_fcb320a6[arg1].field_512,
           sub_fcb320a6[arg1].field_768,
           sub_fcb320a6[arg1].field_1280,
           sub_fcb320a6[arg1].field_1024
}

function _fallback() payable {
    emit DepositFunds(msg.sender, msg.value);
}

function getPendingTransactions() {
    require stor0[address(msg.sender)] == 1
    if not stor7.length:
        mem[(32 * stor7.length) + 128] = 32
        mem[(32 * stor7.length) + 160] = stor7.length
        mem[(32 * stor7.length) + 192 len floor32(stor7.length)] = mem[128 len floor32(stor7.length)]
        return memory
          from (32 * stor7.length) + 128
           len (96 * stor7.length) + 64
    mem[128] = uint256(stor7.field_0)
    idx = 128
    s = 0
    while (32 * stor7.length) + 96 > idx:
        mem[idx + 32] = stor7[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * stor7.length) + 192 len floor32(stor7.length)] = mem[128 len floor32(stor7.length)]
    return Array(len=stor7.length, data=mem[128 len floor32(stor7.length)], mem[(32 * stor7.length) + floor32(stor7.length) + 192 len (32 * stor7.length) - floor32(stor7.length)]), 
}

function deleteTransaction(uint256 arg1) {
    require calldata.size - 4 >= 32
    require stor0[address(msg.sender)] == 1
    require stor7.length > 0
    idx = 0
    s = 0
    while idx < stor7.length:
        require idx < stor7.length
        if s != 1:
            mem[0] = 7
            if arg1 != stor7[idx].field_0:
                idx = idx + 1
                s = s
                continue 
            idx = idx + 1
            s = 1
            continue 
        require idx - 1 < stor7.length
        mem[0] = 7
        stor7[idx].field_0 = stor7[idx].field_0
        idx = idx + 1
        s = s
        continue 
    require s == 1
    require stor7.length - 1 < stor7.length
    stor7[stor7.length].field_0 = 0
    stor7.length--
    if stor7.length > stor7.length - 1:
        idx = stor7.length - 1
        while stor7.length > idx:
            stor7[idx].field_0 = 0
            idx = idx + 1
            continue 
    sub_fcb320a6[arg1].field_0 = 0
    sub_fcb320a6[arg1].field_256 = 0
    sub_fcb320a6[arg1].field_512 = 0
    sub_fcb320a6[arg1].field_768 = 0
    sub_fcb320a6[arg1].field_1024 = 0
    sub_fcb320a6[arg1].field_1280 = 0
}

function signTransaction(uint256 arg1) {
    require calldata.size - 4 >= 32
    require stor0[address(msg.sender)] == 1
    require sub_fcb320a6[arg1].field_0 != 0
    require sub_fcb320a6[arg1][6][address(msg.sender)].field_0 != 1
    sub_fcb320a6[arg1][6][address(msg.sender)].field_0 = 1
    sub_fcb320a6[arg1].field_1024++
    emit TransactionSigned(msg.sender, arg1);
    if sub_fcb320a6[arg1].field_1024 >= 2:
        if not sub_fcb320a6[arg1].field_512:
            require eth.balance(this.address) >= sub_fcb320a6[arg1].field_768
            call sub_fcb320a6[arg1].field_256 with:
               value sub_fcb320a6[arg1].field_768 wei
                 gas gas_remaining wei
            require ext_call.success
            call stor2 with:
               value sub_fcb320a6[arg1].field_1280 wei
                 gas gas_remaining wei
            require ext_call.success
        else:
            stor5 = sub_fcb320a6[arg1].field_512
            require ext_code.size(stor5)
            call stor5.0xa9059cbb with:
                 gas gas_remaining wei
                args sub_fcb320a6[arg1].field_256, sub_fcb320a6[arg1].field_768
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor5)
            call stor5.0xa9059cbb with:
                 gas gas_remaining wei
                args stor2, sub_fcb320a6[arg1].field_1280
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
        emit 0x43c59ecb: sub_fcb320a6[arg1].field_0, sub_fcb320a6[arg1].field_256, sub_fcb320a6[arg1].field_768, sub_fcb320a6[arg1].field_1280, arg1
        require stor0[address(msg.sender)] == 1
        require stor7.length > 0
        idx = 0
        s = 0
        while idx < stor7.length:
            require idx < stor7.length
            if s != 1:
                mem[0] = 7
                if arg1 != stor7[idx].field_0:
                    idx = idx + 1
                    s = s
                    continue 
                idx = idx + 1
                s = 1
                continue 
            require idx - 1 < stor7.length
            mem[0] = 7
            stor7[idx].field_0 = stor7[idx].field_0
            idx = idx + 1
            s = s
            continue 
        require s == 1
        require stor7.length - 1 < stor7.length
        stor7[stor7.length].field_0 = 0
        stor7.length--
        if stor7.length > stor7.length - 1:
            idx = stor7.length - 1
            while stor7.length > idx:
                stor7[idx].field_0 = 0
                idx = idx + 1
                continue 
        sub_fcb320a6[arg1].field_0 = 0
        sub_fcb320a6[arg1].field_256 = 0
        sub_fcb320a6[arg1].field_512 = 0
        sub_fcb320a6[arg1].field_768 = 0
        sub_fcb320a6[arg1].field_1024 = 0
        sub_fcb320a6[arg1].field_1280 = 0
}

function sub_0a4c6b7e(?) {
    require calldata.size - 4 >= 128
    require stor0[address(msg.sender)] == 1
    require arg2 > 0
    stor1++
    sub_fcb320a6[stor1].field_0 = msg.sender
    sub_fcb320a6[stor1].field_256 = arg1
    sub_fcb320a6[stor1].field_512 = arg4
    sub_fcb320a6[stor1].field_768 = arg2
    sub_fcb320a6[stor1].field_1024 = 0
    sub_fcb320a6[stor1].field_1280 = arg3
    stor7.length++
    stor7[stor7.length].field_0 = stor1
    emit 0xb8937dad: msg.sender, address(arg1), arg2, arg3, stor1
    require stor0[address(msg.sender)] == 1
    require sub_fcb320a6[stor1].field_0 != 0
    require sub_fcb320a6[stor1][6][address(msg.sender)].field_0 != 1
    sub_fcb320a6[stor1][6][address(msg.sender)].field_0 = 1
    sub_fcb320a6[stor1].field_1024++
    emit TransactionSigned(msg.sender, stor1);
    if sub_fcb320a6[stor1].field_1024 >= 2:
        if not sub_fcb320a6[stor1].field_512:
            require eth.balance(this.address) >= sub_fcb320a6[stor1].field_768
            call sub_fcb320a6[stor1].field_256 with:
               value sub_fcb320a6[stor1].field_768 wei
                 gas gas_remaining wei
            require ext_call.success
            call stor2 with:
               value sub_fcb320a6[stor1].field_1280 wei
                 gas gas_remaining wei
            require ext_call.success
        else:
            stor5 = sub_fcb320a6[stor1].field_512
            require ext_code.size(stor5)
            call stor5.0xa9059cbb with:
                 gas gas_remaining wei
                args sub_fcb320a6[stor1].field_256, sub_fcb320a6[stor1].field_768
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor5)
            call stor5.0xa9059cbb with:
                 gas gas_remaining wei
                args stor2, sub_fcb320a6[stor1].field_1280
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
        emit 0x43c59ecb: sub_fcb320a6[stor1].field_0, sub_fcb320a6[stor1].field_256, sub_fcb320a6[stor1].field_768, sub_fcb320a6[stor1].field_1280, stor1
        require stor0[address(msg.sender)] == 1
        require stor7.length > 0
        idx = 0
        s = 0
        while idx < stor7.length:
            require idx < stor7.length
            if s != 1:
                mem[0] = 7
                if stor1 != stor7[idx].field_0:
                    idx = idx + 1
                    s = s
                    continue 
                idx = idx + 1
                s = 1
                continue 
            require idx - 1 < stor7.length
            mem[0] = 7
            stor7[idx].field_0 = stor7[idx].field_0
            idx = idx + 1
            s = s
            continue 
        require s == 1
        require stor7.length - 1 < stor7.length
        stor7[stor7.length].field_0 = 0
        stor7.length--
        if stor7.length > stor7.length - 1:
            idx = stor7.length - 1
            while stor7.length > idx:
                stor7[idx].field_0 = 0
                idx = idx + 1
                continue 
        sub_fcb320a6[stor1].field_0 = 0
        sub_fcb320a6[stor1].field_256 = 0
        sub_fcb320a6[stor1].field_512 = 0
        sub_fcb320a6[stor1].field_768 = 0
        sub_fcb320a6[stor1].field_1024 = 0
        sub_fcb320a6[stor1].field_1280 = 0
}

function withdraw(uint256 arg1, uint256 arg2, address arg3) {
    require calldata.size - 4 >= 96
    require stor0[address(msg.sender)] == 1
    require arg1 > 0
    stor1++
    sub_fcb320a6[stor1].field_0 = msg.sender
    sub_fcb320a6[stor1].field_256 = msg.sender
    sub_fcb320a6[stor1].field_512 = arg3
    sub_fcb320a6[stor1].field_768 = arg1
    sub_fcb320a6[stor1].field_1024 = 0
    sub_fcb320a6[stor1].field_1280 = arg2
    stor7.length++
    stor7[stor7.length].field_0 = stor1
    emit 0xb8937dad: msg.sender, msg.sender, arg1, arg2, stor1
    require stor0[address(msg.sender)] == 1
    require sub_fcb320a6[stor1].field_0 != 0
    require sub_fcb320a6[stor1][6][address(msg.sender)].field_0 != 1
    sub_fcb320a6[stor1][6][address(msg.sender)].field_0 = 1
    sub_fcb320a6[stor1].field_1024++
    emit TransactionSigned(msg.sender, stor1);
    if sub_fcb320a6[stor1].field_1024 >= 2:
        if not sub_fcb320a6[stor1].field_512:
            require eth.balance(this.address) >= sub_fcb320a6[stor1].field_768
            call sub_fcb320a6[stor1].field_256 with:
               value sub_fcb320a6[stor1].field_768 wei
                 gas gas_remaining wei
            require ext_call.success
            call stor2 with:
               value sub_fcb320a6[stor1].field_1280 wei
                 gas gas_remaining wei
            require ext_call.success
        else:
            stor5 = sub_fcb320a6[stor1].field_512
            require ext_code.size(stor5)
            call stor5.0xa9059cbb with:
                 gas gas_remaining wei
                args sub_fcb320a6[stor1].field_256, sub_fcb320a6[stor1].field_768
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor5)
            call stor5.0xa9059cbb with:
                 gas gas_remaining wei
                args stor2, sub_fcb320a6[stor1].field_1280
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
        emit 0x43c59ecb: sub_fcb320a6[stor1].field_0, sub_fcb320a6[stor1].field_256, sub_fcb320a6[stor1].field_768, sub_fcb320a6[stor1].field_1280, stor1
        require stor0[address(msg.sender)] == 1
        require stor7.length > 0
        idx = 0
        s = 0
        while idx < stor7.length:
            require idx < stor7.length
            if s != 1:
                mem[0] = 7
                if stor1 != stor7[idx].field_0:
                    idx = idx + 1
                    s = s
                    continue 
                idx = idx + 1
                s = 1
                continue 
            require idx - 1 < stor7.length
            mem[0] = 7
            stor7[idx].field_0 = stor7[idx].field_0
            idx = idx + 1
            s = s
            continue 
        require s == 1
        require stor7.length - 1 < stor7.length
        stor7[stor7.length].field_0 = 0
        stor7.length--
        if stor7.length > stor7.length - 1:
            idx = stor7.length - 1
            while stor7.length > idx:
                stor7[idx].field_0 = 0
                idx = idx + 1
                continue 
        sub_fcb320a6[stor1].field_0 = 0
        sub_fcb320a6[stor1].field_256 = 0
        sub_fcb320a6[stor1].field_512 = 0
        sub_fcb320a6[stor1].field_768 = 0
        sub_fcb320a6[stor1].field_1024 = 0
        sub_fcb320a6[stor1].field_1280 = 0
}



}
