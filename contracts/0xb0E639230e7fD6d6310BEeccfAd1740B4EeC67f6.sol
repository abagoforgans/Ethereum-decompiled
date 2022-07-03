contract main {




// =====================  Runtime code  =====================


address adminAddress;
address feeAccount;
uint256 fee;
mapping of address sub_e35f6ea8;
mapping of uint256 depositedToken;
mapping of uint256 depositedEther;
mapping of uint256 price;
mapping of uint256 sub_b073d409;
mapping of uint256 sub_6b6119bb;
mapping of uint256 sub_8ea1eacc;

function depositedEther(address arg1) {
    return depositedEther[arg1]
}

function feeAccount() {
    return feeAccount
}

function sub_6b6119bb(?) {
    return sub_6b6119bb[arg1]
}

function sub_8ea1eacc(?) {
    return sub_8ea1eacc[arg1]
}

function depositedToken(address arg1) {
    return depositedToken[arg1]
}

function price(address arg1) {
    return price[arg1]
}

function sub_b073d409(?) {
    return sub_b073d409[arg1]
}

function fee() {
    return fee
}

function sub_e35f6ea8(?) {
    return sub_e35f6ea8[arg1]
}

function admin() {
    return adminAddress
}

function _fallback() payable {
  stop
}

function changeFee(uint256 arg1) {
    require msg.sender == adminAddress
    require arg1 != fee
    fee = arg1
    emit FeeChanged(fee);
}

function changeAdmin(address arg1) {
    require msg.sender == adminAddress
    require arg1
    require arg1 != adminAddress
    adminAddress = arg1
}

function changeFeeAccount(address arg1) {
    require msg.sender == adminAddress
    require arg1
    require arg1 != feeAccount
    feeAccount = arg1
}

function sub_38830999(?) {
    require msg.sender == sub_e35f6ea8[address(arg1)]
    require arg2 > 0
    require arg1
    price[address(arg1)] = arg2
    emit 0xe396e971: arg2, arg1
}

function sub_2318eb04(?) {
    require msg.sender == adminAddress
    require arg1
    require arg2
    require arg2 != sub_e35f6ea8[address(arg1)]
    sub_e35f6ea8[address(arg1)] = arg2
}

function sub_eab7a628(?) payable {
    require msg.sender == sub_e35f6ea8[address(arg1)]
    require depositedEther[address(arg1)] + msg.value >= depositedEther[address(arg1)]
    depositedEther[address(arg1)] += msg.value
}

function sub_c3967413(?) {
    require msg.sender == sub_e35f6ea8[address(arg1)]
    require arg2 > 0
    require arg2 < arg3
    require arg1
    sub_b073d409[address(arg1)] = arg2
    sub_6b6119bb[address(arg1)] = arg3
    emit 0x27055f33: arg2, arg3, arg1
}

function withdrawFee(uint256 arg1) {
    require msg.sender == adminAddress
    require feeAccount
    require arg1 > 0
    call feeAccount with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return 1
}

function sub_092c9340(?) {
    require msg.sender == adminAddress
    require feeAccount
    require arg2 > 0
    require arg1
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args feeAccount, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    return 1
}

function sub_9bc1726c(?) {
    require msg.sender == sub_e35f6ea8[address(arg1)]
    require arg1
    require ext_code.size(arg1)
    call arg1.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require depositedToken[address(arg1)] + arg2 >= depositedToken[address(arg1)]
    depositedToken[address(arg1)] += arg2
    emit DepositToken(arg2, arg1);
}

function sub_e2ae2e2b(?) {
    require arg2
    require price[address(arg2)] > 0
    if not sub_b073d409[address(arg2)]:
        require arg3 >= 100 * 10^18
        if not sub_6b6119bb[address(arg2)]:
            require arg3 <= 10000000 * 10^18
        else:
            require arg3 <= sub_6b6119bb[address(arg2)]
    else:
        require arg3 >= sub_b073d409[address(arg2)]
        if not sub_6b6119bb[address(arg2)]:
            require arg3 <= 10000000 * 10^18
        else:
            require arg3 <= sub_6b6119bb[address(arg2)]
    if not arg3:
        require eth.balance(this.address) >= 0
        require depositedEther[address(arg2)] >= 0
        require arg2
        require ext_code.size(arg2)
        call arg2.0x23b872dd with:
             gas gas_remaining wei
            args address(arg1), address(this.address), arg3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
        call arg1 with:
             gas 2300 wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require depositedToken[address(arg2)] + arg3 >= depositedToken[address(arg2)]
        depositedToken[address(arg2)] += arg3
        require 0 <= depositedEther[address(arg2)]
        emit 0x5c14404c: arg3, 0, 0, arg2, msg.sender, arg1
    else:
        require arg3
        require arg3 * price[address(arg2)] / arg3 == price[address(arg2)]
        require not arg3 * price[address(arg2)] % 10^18
        require arg3 * price[address(arg2)] == 10^18 * arg3 * price[address(arg2)] / 10^18
        require eth.balance(this.address) >= arg3 * price[address(arg2)] / 10^18
        require depositedEther[address(arg2)] >= arg3 * price[address(arg2)] / 10^18
        if not fee:
            require arg2
            require ext_code.size(arg2)
            call arg2.0x23b872dd with:
                 gas gas_remaining wei
                args address(arg1), address(this.address), arg3
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
            call arg1 with:
               value arg3 * price[address(arg2)] / 10^18 wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require depositedToken[address(arg2)] + arg3 >= depositedToken[address(arg2)]
            depositedToken[address(arg2)] += arg3
            require arg3 * price[address(arg2)] / 10^18 <= depositedEther[address(arg2)]
            depositedEther[address(arg2)] -= arg3 * price[address(arg2)] / 10^18
            emit 0x5c14404c: arg3, arg3 * price[address(arg2)] / 10^18, 0, arg2, msg.sender, arg1
        else:
            if not arg3 * price[address(arg2)] / 10^18:
                require 0 <= arg3 * price[address(arg2)] / 10^18
                require arg2
                require ext_code.size(arg2)
                call arg2.0x23b872dd with:
                     gas gas_remaining wei
                    args address(arg1), address(this.address), arg3
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0]
                call arg1 with:
                   value arg3 * price[address(arg2)] / 10^18 wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require depositedToken[address(arg2)] + arg3 >= depositedToken[address(arg2)]
                depositedToken[address(arg2)] += arg3
                require arg3 * price[address(arg2)] / 10^18 <= depositedEther[address(arg2)]
                depositedEther[address(arg2)] -= arg3 * price[address(arg2)] / 10^18
                emit 0x5c14404c: arg3, arg3 * price[address(arg2)] / 10^18, 0, arg2, msg.sender, arg1
            else:
                require arg3 * price[address(arg2)] / 10^18
                require arg3 * price[address(arg2)] / 10^18 * fee / arg3 * price[address(arg2)] / 10^18 == fee
                require not arg3 * price[address(arg2)] / 10^18 * fee % 100000
                require arg3 * price[address(arg2)] / 10^18 * fee == 100000 * arg3 * price[address(arg2)] / 10^18 * fee / 100000
                require arg3 * price[address(arg2)] / 10^18 * fee / 100000 <= arg3 * price[address(arg2)] / 10^18
                require arg2
                require ext_code.size(arg2)
                call arg2.0x23b872dd with:
                     gas gas_remaining wei
                    args address(arg1), address(this.address), arg3
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0]
                call arg1 with:
                   value (arg3 * price[address(arg2)] / 10^18) - (arg3 * price[address(arg2)] / 10^18 * fee / 100000) wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require depositedToken[address(arg2)] + arg3 >= depositedToken[address(arg2)]
                depositedToken[address(arg2)] += arg3
                require arg3 * price[address(arg2)] / 10^18 <= depositedEther[address(arg2)]
                depositedEther[address(arg2)] -= arg3 * price[address(arg2)] / 10^18
                if arg3 * price[address(arg2)] / 10^18 * fee / 100000 > 0:
                    require sub_8ea1eacc[0] + (arg3 * price[address(arg2)] / 10^18 * fee / 100000) >= sub_8ea1eacc[0]
                    sub_8ea1eacc[0] += arg3 * price[address(arg2)] / 10^18 * fee / 100000
                emit 0x5c14404c: arg3, (arg3 * price[address(arg2)] / 10^18) - (arg3 * price[address(arg2)] / 10^18 * fee / 100000), arg3 * price[address(arg2)] / 10^18 * fee / 100000, arg2, msg.sender, arg1
}

function receiveApproval(address arg1, uint256 arg2, address arg3, bytes arg4) {
    emit 0x87e06b1b: arg2, Array(len=arg4.length, data=arg4[all]), arg1, arg3
    require arg3
    require price[address(arg3)] > 0
    if not sub_b073d409[address(arg3)]:
        require arg2 >= 100 * 10^18
        if not sub_6b6119bb[address(arg3)]:
            require arg2 <= 10000000 * 10^18
        else:
            require arg2 <= sub_6b6119bb[address(arg3)]
    else:
        require arg2 >= sub_b073d409[address(arg3)]
        if not sub_6b6119bb[address(arg3)]:
            require arg2 <= 10000000 * 10^18
        else:
            require arg2 <= sub_6b6119bb[address(arg3)]
    if not arg2:
        require eth.balance(this.address) >= 0
        require depositedEther[address(arg3)] >= 0
        require arg3
        require ext_code.size(arg3)
        call arg3.0x23b872dd with:
             gas gas_remaining wei
            args address(arg1), address(this.address), arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
        call arg1 with:
             gas 2300 wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require depositedToken[address(arg3)] + arg2 >= depositedToken[address(arg3)]
        depositedToken[address(arg3)] += arg2
        require 0 <= depositedEther[address(arg3)]
        emit 0x5c14404c: arg2, 0, 0, arg3, msg.sender, arg1
    else:
        require arg2
        require arg2 * price[address(arg3)] / arg2 == price[address(arg3)]
        require not arg2 * price[address(arg3)] % 10^18
        require arg2 * price[address(arg3)] == 10^18 * arg2 * price[address(arg3)] / 10^18
        require eth.balance(this.address) >= arg2 * price[address(arg3)] / 10^18
        require depositedEther[address(arg3)] >= arg2 * price[address(arg3)] / 10^18
        if not fee:
            require arg3
            require ext_code.size(arg3)
            call arg3.0x23b872dd with:
                 gas gas_remaining wei
                args address(arg1), address(this.address), arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
            call arg1 with:
               value arg2 * price[address(arg3)] / 10^18 wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require depositedToken[address(arg3)] + arg2 >= depositedToken[address(arg3)]
            depositedToken[address(arg3)] += arg2
            require arg2 * price[address(arg3)] / 10^18 <= depositedEther[address(arg3)]
            depositedEther[address(arg3)] -= arg2 * price[address(arg3)] / 10^18
            emit 0x5c14404c: arg2, arg2 * price[address(arg3)] / 10^18, 0, arg3, msg.sender, arg1
        else:
            if not arg2 * price[address(arg3)] / 10^18:
                require 0 <= arg2 * price[address(arg3)] / 10^18
                require arg3
                require ext_code.size(arg3)
                call arg3.0x23b872dd with:
                     gas gas_remaining wei
                    args address(arg1), address(this.address), arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0]
                call arg1 with:
                   value arg2 * price[address(arg3)] / 10^18 wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require depositedToken[address(arg3)] + arg2 >= depositedToken[address(arg3)]
                depositedToken[address(arg3)] += arg2
                require arg2 * price[address(arg3)] / 10^18 <= depositedEther[address(arg3)]
                depositedEther[address(arg3)] -= arg2 * price[address(arg3)] / 10^18
                emit 0x5c14404c: arg2, arg2 * price[address(arg3)] / 10^18, 0, arg3, msg.sender, arg1
            else:
                require arg2 * price[address(arg3)] / 10^18
                require arg2 * price[address(arg3)] / 10^18 * fee / arg2 * price[address(arg3)] / 10^18 == fee
                require not arg2 * price[address(arg3)] / 10^18 * fee % 100000
                require arg2 * price[address(arg3)] / 10^18 * fee == 100000 * arg2 * price[address(arg3)] / 10^18 * fee / 100000
                require arg2 * price[address(arg3)] / 10^18 * fee / 100000 <= arg2 * price[address(arg3)] / 10^18
                require arg3
                require ext_code.size(arg3)
                call arg3.0x23b872dd with:
                     gas gas_remaining wei
                    args address(arg1), address(this.address), arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0]
                call arg1 with:
                   value (arg2 * price[address(arg3)] / 10^18) - (arg2 * price[address(arg3)] / 10^18 * fee / 100000) wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require depositedToken[address(arg3)] + arg2 >= depositedToken[address(arg3)]
                depositedToken[address(arg3)] += arg2
                require arg2 * price[address(arg3)] / 10^18 <= depositedEther[address(arg3)]
                depositedEther[address(arg3)] -= arg2 * price[address(arg3)] / 10^18
                if arg2 * price[address(arg3)] / 10^18 * fee / 100000 > 0:
                    require sub_8ea1eacc[0] + (arg2 * price[address(arg3)] / 10^18 * fee / 100000) >= sub_8ea1eacc[0]
                    sub_8ea1eacc[0] += arg2 * price[address(arg3)] / 10^18 * fee / 100000
                emit 0x5c14404c: arg2, (arg2 * price[address(arg3)] / 10^18) - (arg2 * price[address(arg3)] / 10^18 * fee / 100000), arg2 * price[address(arg3)] / 10^18 * fee / 100000, arg3, msg.sender, arg1
}

function sub_253bbd3a(?) payable {
    require arg2
    require price[address(arg2)] > 0
    require depositedToken[address(arg2)] >= arg3
    if not sub_b073d409[address(arg2)]:
        require arg3 >= 100 * 10^18
        if not sub_6b6119bb[address(arg2)]:
            require arg3 <= 10000000 * 10^18
        else:
            require arg3 <= sub_6b6119bb[address(arg2)]
    else:
        require arg3 >= sub_b073d409[address(arg2)]
        if not sub_6b6119bb[address(arg2)]:
            require arg3 <= 10000000 * 10^18
        else:
            require arg3 <= sub_6b6119bb[address(arg2)]
    if not arg3:
        require 0 == msg.value
        if not fee:
            require arg2
            require ext_code.size(arg2)
            call arg2.0xa9059cbb with:
                 gas gas_remaining wei
                args address(arg1), arg3
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
            require arg3 <= depositedToken[address(arg2)]
            depositedToken[address(arg2)] -= arg3
            require depositedEther[address(arg2)] >= depositedEther[address(arg2)]
            emit 0xabbdbc6b: address(msg.sender), arg3, 0, 0, arg2, arg1
        else:
            if not arg3:
                require 0 <= arg3
                require arg2
                require ext_code.size(arg2)
                call arg2.0xa9059cbb with:
                     gas gas_remaining wei
                    args address(arg1), arg3
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0]
                require arg3 <= depositedToken[address(arg2)]
                depositedToken[address(arg2)] -= arg3
                require depositedEther[address(arg2)] >= depositedEther[address(arg2)]
                emit 0xabbdbc6b: address(msg.sender), arg3, 0, 0, arg2, arg1
            else:
                require arg3
                require arg3 * fee / arg3 == fee
                require not arg3 * fee % 100000
                require arg3 * fee == 100000 * arg3 * fee / 100000
                require arg3 * fee / 100000 <= arg3
                require arg2
                require ext_code.size(arg2)
                call arg2.0xa9059cbb with:
                     gas gas_remaining wei
                    args address(arg1), arg3 - (arg3 * fee / 100000)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0]
                require arg3 <= depositedToken[address(arg2)]
                depositedToken[address(arg2)] -= arg3
                require depositedEther[address(arg2)] >= depositedEther[address(arg2)]
                if arg3 * fee / 100000 > 0:
                    require sub_8ea1eacc[address(arg2)] + (arg3 * fee / 100000) >= sub_8ea1eacc[address(arg2)]
                    sub_8ea1eacc[address(arg2)] += arg3 * fee / 100000
                emit 0xabbdbc6b: address(msg.sender), arg3 - (arg3 * fee / 100000), 0, arg3 * fee / 100000, arg2, arg1
    else:
        require arg3
        require arg3 * price[address(arg2)] / arg3 == price[address(arg2)]
        require not arg3 * price[address(arg2)] % 10^18
        require arg3 * price[address(arg2)] == 10^18 * arg3 * price[address(arg2)] / 10^18
        require arg3 * price[address(arg2)] / 10^18 == msg.value
        if not fee:
            require arg2
            require ext_code.size(arg2)
            call arg2.0xa9059cbb with:
                 gas gas_remaining wei
                args address(arg1), arg3
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
            require arg3 <= depositedToken[address(arg2)]
            depositedToken[address(arg2)] -= arg3
            require depositedEther[address(arg2)] + (arg3 * price[address(arg2)] / 10^18) >= depositedEther[address(arg2)]
            depositedEther[address(arg2)] += arg3 * price[address(arg2)] / 10^18
            emit 0xabbdbc6b: address(msg.sender), arg3, arg3 * price[address(arg2)] / 10^18, 0, arg2, arg1
        else:
            if not arg3:
                require 0 <= arg3
                require arg2
                require ext_code.size(arg2)
                call arg2.0xa9059cbb with:
                     gas gas_remaining wei
                    args address(arg1), arg3
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0]
                require arg3 <= depositedToken[address(arg2)]
                depositedToken[address(arg2)] -= arg3
                require depositedEther[address(arg2)] + (arg3 * price[address(arg2)] / 10^18) >= depositedEther[address(arg2)]
                depositedEther[address(arg2)] += arg3 * price[address(arg2)] / 10^18
                emit 0xabbdbc6b: address(msg.sender), arg3, arg3 * price[address(arg2)] / 10^18, 0, arg2, arg1
            else:
                require arg3
                require arg3 * fee / arg3 == fee
                require not arg3 * fee % 100000
                require arg3 * fee == 100000 * arg3 * fee / 100000
                require arg3 * fee / 100000 <= arg3
                require arg2
                require ext_code.size(arg2)
                call arg2.0xa9059cbb with:
                     gas gas_remaining wei
                    args address(arg1), arg3 - (arg3 * fee / 100000)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0]
                require arg3 <= depositedToken[address(arg2)]
                depositedToken[address(arg2)] -= arg3
                require depositedEther[address(arg2)] + (arg3 * price[address(arg2)] / 10^18) >= depositedEther[address(arg2)]
                depositedEther[address(arg2)] += arg3 * price[address(arg2)] / 10^18
                if arg3 * fee / 100000 > 0:
                    require sub_8ea1eacc[address(arg2)] + (arg3 * fee / 100000) >= sub_8ea1eacc[address(arg2)]
                    sub_8ea1eacc[address(arg2)] += arg3 * fee / 100000
                emit 0xabbdbc6b: address(msg.sender), arg3 - (arg3 * fee / 100000), arg3 * price[address(arg2)] / 10^18, arg3 * fee / 100000, arg2, arg1
}



}
