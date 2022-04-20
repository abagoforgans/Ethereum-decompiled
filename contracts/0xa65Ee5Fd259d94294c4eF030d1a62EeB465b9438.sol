contract main {


// =======================  Init code  ======================


address stor1;
mapping of uint256 stor2;
uint256 stor4;
uint8 stor5;

function _fallback() payable {
    stor1 = msg.sender
    stor4 = 10^15
    stor5 = 0
    require not msg.value
    stor1 = msg.sender
    stor2[address(msg.sender)] = stor4
    return code.data[268 len 8446]
}



// =====================  Runtime code  =====================


const name = 'Etherball'

const decimals = 9

const symbol = 'EBYTE'


address stor1;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
uint8 stor5;

function totalSupply() {
    return totalSupply
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function distributionFinished() {
    return bool(stor5)
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function getEthBalance(address arg1) {
    return eth.balance(arg1)
}

function transferOwnership(address arg1) {
    require msg.sender == stor1
    stor1 = arg1
}

function finishDistribution() {
    require msg.sender == stor1
    stor5 = 1
    emit DistrFinished()
    return 1
}

function getTokenBalance(address arg1, address arg2) {
    require ext_code.size(arg1)
    call arg1.0x70a08231 with:
         gas gas_remaining - 710 wei
        args arg2
    require ext_call.success
    return ext_call.return_data[0]
}

function approve(address arg1, uint256 arg2) {
    if arg2:
        if allowance[address(msg.sender)][address(arg1)]:
            return 0
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size >= 68
    require arg1
    require arg2 <= balanceOf[address(msg.sender)]
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function withdrawForeignTokens(address arg1) {
    require msg.sender == stor1
    require ext_code.size(arg1)
    call arg1.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args stor1, ext_call.return_data[0]
    require ext_call.success
    return bool(ext_call.return_data[0])
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size >= 100
    require arg2
    require arg3 <= balanceOf[address(arg1)]
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function distributeEbyte(address[] arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require msg.sender == stor1
    require not stor5
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        if eth.balance(mem[(32 * idx) + 128]) >= arg5:
            require idx < arg1.length
            _28 = mem[(32 * idx) + 128]
            mem[(32 * arg1.length) + 160] = 0
            mem[(32 * arg1.length) + 132] = address(_28)
            require ext_code.size(arg2)
            call arg2.0x70a08231 with:
                 gas gas_remaining - 710 wei
                args address(_28)
            mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
            require ext_call.success
            if ext_call.return_data[0] >= arg4:
                require arg3 <= balanceOf[stor1]
                balanceOf[stor1] -= arg3
                require idx < arg1.length
                require balanceOf[mem[(32 * idx) + 140 len 20]] + arg3 >= balanceOf[mem[(32 * idx) + 140 len 20]]
                require idx < arg1.length
                mem[0] = mem[(32 * idx) + 140 len 20]
                mem[32] = 2
                balanceOf[mem[(32 * idx) + 140 len 20]] += arg3
                require idx < arg1.length
                _43 = mem[(32 * idx) + 128]
                mem[(32 * arg1.length) + 128] = arg3
                emit Transfer(arg3, stor1, address(_43));
        idx = idx + 1
        continue 
}

function distributeEbyteForETH(address[] arg1, uint256 arg2, uint256 arg3, uint256 arg4) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require msg.sender == stor1
    require not stor5
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        if eth.balance(mem[(32 * idx) + 128]) >= arg4:
            require idx < arg1.length
            if not arg2:
                require arg3
                require arg2 * eth.balance(mem[(32 * idx) + 128]) / 10^9 / arg3 <= balanceOf[stor1]
                balanceOf[stor1] -= arg2 * eth.balance(mem[(32 * idx) + 128]) / 10^9 / arg3
                require idx < arg1.length
                require balanceOf[mem[(32 * idx) + 140 len 20]] + (arg2 * eth.balance(mem[(32 * idx) + 128]) / 10^9 / arg3) >= balanceOf[mem[(32 * idx) + 140 len 20]]
                require idx < arg1.length
                mem[0] = mem[(32 * idx) + 140 len 20]
                mem[32] = 2
                balanceOf[mem[(32 * idx) + 140 len 20]] += arg2 * eth.balance(mem[(32 * idx) + 128]) / 10^9 / arg3
                require idx < arg1.length
                _50 = mem[(32 * idx) + 128]
                mem[(32 * arg1.length) + 128] = arg2 * eth.balance(mem[(32 * idx) + 128]) / 10^9 / arg3
                emit Transfer(mem[(32 * arg1.length) + 128], stor1, address(_50));
            else:
                require arg2
                require arg2 * eth.balance(mem[(32 * idx) + 128]) / 10^9 / arg2 == eth.balance(mem[(32 * idx) + 128]) / 10^9
                require arg3
                require arg2 * eth.balance(mem[(32 * idx) + 128]) / 10^9 / arg3 <= balanceOf[stor1]
                balanceOf[stor1] -= arg2 * eth.balance(mem[(32 * idx) + 128]) / 10^9 / arg3
                require idx < arg1.length
                require balanceOf[mem[(32 * idx) + 140 len 20]] + (arg2 * eth.balance(mem[(32 * idx) + 128]) / 10^9 / arg3) >= balanceOf[mem[(32 * idx) + 140 len 20]]
                require idx < arg1.length
                mem[0] = mem[(32 * idx) + 140 len 20]
                mem[32] = 2
                balanceOf[mem[(32 * idx) + 140 len 20]] += arg2 * eth.balance(mem[(32 * idx) + 128]) / 10^9 / arg3
                require idx < arg1.length
                _57 = mem[(32 * idx) + 128]
                mem[(32 * arg1.length) + 128] = arg2 * eth.balance(mem[(32 * idx) + 128]) / 10^9 / arg3
                emit Transfer(mem[(32 * arg1.length) + 128], stor1, address(_57));
        idx = idx + 1
        continue 
}

function distributeEbyteForEBYTE(address[] arg1, address arg2, uint256 arg3, uint256 arg4) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require msg.sender == stor1
    require not stor5
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        _43 = mem[(32 * idx) + 128]
        mem[(32 * arg1.length) + 160] = 0
        mem[(32 * arg1.length) + 132] = address(_43)
        require ext_code.size(arg2)
        call arg2.0x70a08231 with:
             gas gas_remaining - 710 wei
            args address(_43)
        mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
        require ext_call.success
        if ext_call.return_data[0] >= arg3:
            require idx < arg1.length
            _50 = mem[(32 * idx) + 128]
            mem[(32 * arg1.length) + 160] = 0
            mem[(32 * arg1.length) + 132] = address(_50)
            require ext_code.size(arg2)
            call arg2.0x70a08231 with:
                 gas gas_remaining - 710 wei
                args address(_50)
            mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
            require ext_call.success
            if not ext_call.return_data[0] / 100:
                require ext_call.return_data[0] / 100 * arg4 <= balanceOf[stor1]
                balanceOf[stor1] += -1 * ext_call.return_data[0] / 100 * arg4
                require idx < arg1.length
                require balanceOf[mem[(32 * idx) + 140 len 20]] + (ext_call.return_data[0] / 100 * arg4) >= balanceOf[mem[(32 * idx) + 140 len 20]]
                require idx < arg1.length
                mem[0] = mem[(32 * idx) + 140 len 20]
                mem[32] = 2
                balanceOf[mem[(32 * idx) + 140 len 20]] += ext_call.return_data[0] / 100 * arg4
                require idx < arg1.length
                _70 = mem[(32 * idx) + 128]
                mem[(32 * arg1.length) + 128] = ext_call.return_data[0] / 100 * arg4
                emit Transfer((ext_call.return_data[0] / 100 * arg4), stor1, address(_70));
            else:
                require ext_call.return_data[0] / 100
                require ext_call.return_data[0] / 100 * arg4 / ext_call.return_data[0] / 100 == arg4
                require ext_call.return_data[0] / 100 * arg4 <= balanceOf[stor1]
                balanceOf[stor1] += -1 * ext_call.return_data[0] / 100 * arg4
                require idx < arg1.length
                require balanceOf[mem[(32 * idx) + 140 len 20]] + (ext_call.return_data[0] / 100 * arg4) >= balanceOf[mem[(32 * idx) + 140 len 20]]
                require idx < arg1.length
                mem[0] = mem[(32 * idx) + 140 len 20]
                mem[32] = 2
                balanceOf[mem[(32 * idx) + 140 len 20]] += ext_call.return_data[0] / 100 * arg4
                require idx < arg1.length
                _77 = mem[(32 * idx) + 128]
                mem[(32 * arg1.length) + 128] = ext_call.return_data[0] / 100 * arg4
                emit Transfer((ext_call.return_data[0] / 100 * arg4), stor1, address(_77));
        idx = idx + 1
        continue 
}

function distribution(address[] arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, uint256 arg7) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require msg.sender == stor1
    require not stor5
    if 0 < arg1.length:
        require msg.sender == stor1
        require not stor5
        idx = 0
        while idx < arg1.length:
            require idx < arg1.length
            _73 = mem[(32 * idx) + 128]
            mem[(32 * arg1.length) + 160] = 0
            mem[(32 * arg1.length) + 132] = address(_73)
            require ext_code.size(arg2)
            call arg2.0x70a08231 with:
                 gas gas_remaining - 710 wei
                args address(_73)
            mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
            require ext_call.success
            if ext_call.return_data[0] >= arg5:
                require idx < arg1.length
                _83 = mem[(32 * idx) + 128]
                mem[(32 * arg1.length) + 160] = 0
                mem[(32 * arg1.length) + 132] = address(_83)
                require ext_code.size(arg2)
                call arg2.0x70a08231 with:
                     gas gas_remaining - 710 wei
                    args address(_83)
                mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
                require ext_call.success
                if not ext_call.return_data[0] / 100:
                    require ext_call.return_data[0] / 100 * arg7 <= balanceOf[stor1]
                    balanceOf[stor1] += -1 * ext_call.return_data[0] / 100 * arg7
                    require idx < arg1.length
                    require balanceOf[mem[(32 * idx) + 140 len 20]] + (ext_call.return_data[0] / 100 * arg7) >= balanceOf[mem[(32 * idx) + 140 len 20]]
                    require idx < arg1.length
                    mem[0] = mem[(32 * idx) + 140 len 20]
                    mem[32] = 2
                    balanceOf[mem[(32 * idx) + 140 len 20]] += ext_call.return_data[0] / 100 * arg7
                    require idx < arg1.length
                    _111 = mem[(32 * idx) + 128]
                    mem[(32 * arg1.length) + 128] = ext_call.return_data[0] / 100 * arg7
                    emit Transfer((ext_call.return_data[0] / 100 * arg7), stor1, address(_111));
                else:
                    require ext_call.return_data[0] / 100
                    require ext_call.return_data[0] / 100 * arg7 / ext_call.return_data[0] / 100 == arg7
                    require ext_call.return_data[0] / 100 * arg7 <= balanceOf[stor1]
                    balanceOf[stor1] += -1 * ext_call.return_data[0] / 100 * arg7
                    require idx < arg1.length
                    require balanceOf[mem[(32 * idx) + 140 len 20]] + (ext_call.return_data[0] / 100 * arg7) >= balanceOf[mem[(32 * idx) + 140 len 20]]
                    require idx < arg1.length
                    mem[0] = mem[(32 * idx) + 140 len 20]
                    mem[32] = 2
                    balanceOf[mem[(32 * idx) + 140 len 20]] += ext_call.return_data[0] / 100 * arg7
                    require idx < arg1.length
                    _122 = mem[(32 * idx) + 128]
                    mem[(32 * arg1.length) + 128] = ext_call.return_data[0] / 100 * arg7
                    emit Transfer((ext_call.return_data[0] / 100 * arg7), stor1, address(_122));
            idx = idx + 1
            continue 
        require msg.sender == stor1
        require not stor5
        idx = 0
        while idx < arg1.length:
            require idx < arg1.length
            if eth.balance(mem[(32 * idx) + 128]) >= arg4:
                require idx < arg1.length
                if not arg3:
                    require arg6
                    require arg3 * eth.balance(mem[(32 * idx) + 128]) / 10^9 / arg6 <= balanceOf[stor1]
                    balanceOf[stor1] -= arg3 * eth.balance(mem[(32 * idx) + 128]) / 10^9 / arg6
                    require idx < arg1.length
                    require balanceOf[mem[(32 * idx) + 140 len 20]] + (arg3 * eth.balance(mem[(32 * idx) + 128]) / 10^9 / arg6) >= balanceOf[mem[(32 * idx) + 140 len 20]]
                    require idx < arg1.length
                    mem[0] = mem[(32 * idx) + 140 len 20]
                    mem[32] = 2
                    balanceOf[mem[(32 * idx) + 140 len 20]] += arg3 * eth.balance(mem[(32 * idx) + 128]) / 10^9 / arg6
                    require idx < arg1.length
                    _158 = mem[(32 * idx) + 128]
                    mem[(32 * arg1.length) + 128] = arg3 * eth.balance(mem[(32 * idx) + 128]) / 10^9 / arg6
                    emit Transfer(mem[(32 * arg1.length) + 128], stor1, address(_158));
                else:
                    require arg3
                    require arg3 * eth.balance(mem[(32 * idx) + 128]) / 10^9 / arg3 == eth.balance(mem[(32 * idx) + 128]) / 10^9
                    require arg6
                    require arg3 * eth.balance(mem[(32 * idx) + 128]) / 10^9 / arg6 <= balanceOf[stor1]
                    balanceOf[stor1] -= arg3 * eth.balance(mem[(32 * idx) + 128]) / 10^9 / arg6
                    require idx < arg1.length
                    require balanceOf[mem[(32 * idx) + 140 len 20]] + (arg3 * eth.balance(mem[(32 * idx) + 128]) / 10^9 / arg6) >= balanceOf[mem[(32 * idx) + 140 len 20]]
                    require idx < arg1.length
                    mem[0] = mem[(32 * idx) + 140 len 20]
                    mem[32] = 2
                    balanceOf[mem[(32 * idx) + 140 len 20]] += arg3 * eth.balance(mem[(32 * idx) + 128]) / 10^9 / arg6
                    require idx < arg1.length
                    _165 = mem[(32 * idx) + 128]
                    mem[(32 * arg1.length) + 128] = arg3 * eth.balance(mem[(32 * idx) + 128]) / 10^9 / arg6
                    emit Transfer(mem[(32 * arg1.length) + 128], stor1, address(_165));
            idx = idx + 1
            continue 
}



}
