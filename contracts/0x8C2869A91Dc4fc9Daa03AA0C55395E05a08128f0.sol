contract main {


// =======================  Init code  ======================


array of uint256 stor0;
mapping of uint256 stor1;

function _fallback() payable {
    mem[96] = 7
    mem[128] = 10
    mem[160] = 16
    mem[192] = 20
    mem[224] = 23
    mem[256] = 26
    mem[288] = 27
    mem[320] = 28
    mem[352] = 31
    mem[384] = 34
    mem[416] = 37
    mem[448] = 39
    mem[480] = 41
    mem[512] = 44
    mem[544] = 54
    mem[576] = 57
    mem[608] = 60
    mem[640] = 61
    mem[672] = 63
    mem[704] = 64
    mem[736] = 65
    mem[768] = 66
    stor0.length = 22
    s = 0
    idx = 96
    while 800 > idx:
        stor0[s] = mem[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 22
    while stor0.length > idx:
        stor0[idx] = 0
        idx = idx + 1
        continue 
    s = 0
    idx = 0
    while idx < stor0.length:
        mem[804] = stor0[idx]
        call 0xbb9bc244d798123fde783fcc1c72d3bb8c189413.getNewDAOAddress(uint256 rg1) with:
             gas gas_remaining - 25050 wei
            args stor0[idx]
        mem[800] = ext_call.return_data[0]
        require ext_call.success
        mem[0] = stor0[idx]
        mem[32] = 1
        stor1[stor0[idx]] = ext_call.return_data[0] or Mask(96, 160, stor1[stor0[idx]])
        s = stor0[idx]
        idx = idx + 1
        continue 
    return code.data[575 len 1426]
}



// =====================  Runtime code  =====================


const mainDAO = 0xbb9bc244d798123fde783fcc1c72d3bb8c189413


array of uint256 trustedProposals;
mapping of address whiteList;

function whiteList(uint256 arg1) payable {
    return whiteList[arg1]
}

function trustedProposals(uint256 arg1) payable {
    require arg1 < trustedProposals.length
    return trustedProposals[arg1]
}

function _fallback() payable {
  stop
}

function clawback() payable {
    require msg.sender == 0xda4a4626d3e16e094de3225a751aab7128e96526
    call 0xda4a4626d3e16e094de3225a751aab7128e96526 with:
       value eth.balance(this.address) wei
         gas 0 wei
    require ext_call.success
}

function withdraw(uint256 arg1) payable {
    call whiteList[arg1].balanceOf(address rg1) with:
         gas gas_remaining - 25050 wei
        args msg.sender
    require ext_call.success
    call whiteList[arg1].transferFrom(address rg1, address rg2, uint256 rg3) with:
         gas gas_remaining - 25050 wei
        args msg.sender, address(this.address), ext_call.return_data[0]
    require ext_call.return_data[0]
    call msg.sender with:
       value ext_call.return_data[0] wei
         gas 0 wei
    require ext_call.success
}

function requiredEndowment() payable {
    s = 0
    s = 0
    idx = 0
    s = 0
    while idx < trustedProposals.length:
        mem[0] = trustedProposals[idx]
        mem[32] = 1
        call whiteList[stor0[idx]].totalSupply() with:
             gas gas_remaining - 25050 wei
        mem[96] = ext_call.return_data[0]
        require ext_call.success
        s = whiteList[stor0[idx]]
        s = trustedProposals[idx]
        idx = idx + 1
        s = s + ext_call.return_data[0]
        continue 
    return (s * trustedProposals.length * trustedProposals.length * trustedProposals.length * trustedProposals.length * trustedProposals.length * trustedProposals.length * trustedProposals.length * trustedProposals.length * trustedProposals.length * trustedProposals.length * trustedProposals.length * trustedProposals.length * trustedProposals.length * trustedProposals.length * trustedProposals.length * trustedProposals.length * trustedProposals.length * trustedProposals.length * trustedProposals.length * trustedProposals.length * trustedProposals.length * trustedProposals.length * trustedProposals.length * trustedProposals.length * trustedProposals.length * trustedProposals.length * trustedProposals.length * trustedProposals.length * trustedProposals.length * trustedProposals.length * trustedProposals.length * trustedProposals.length * trustedProposals.length * trustedProposals.length * trustedProposals.length * trustedProposals.length * trustedProposals.length * trustedProposals.length * trustedProposals.length * trustedProposals.length * trustedProposals.length * trustedProposals.length * trustedProposals.length * trustedProposals.length * trustedProposals.length * trustedProposals.length * trustedProposals.length * trustedProposals.length * trustedProposals.length * trustedProposals.length * trustedProposals.length * trustedProposals.length * trustedProposals.length * trustedProposals.length * trustedProposals.length * trustedProposals.length * trustedProposals.length * trustedProposals.length * trustedProposals.length * trustedProposals.length * trustedProposals.length * trustedProposals.length * trustedProposals.length * trustedProposals.length * trustedProposals.length * trustedProposals.length * trustedProposals.length * trustedProposals.length * trustedProposals.length * trustedProposals.length * trustedProposals.length * trustedProposals.length * trustedProposals.length * trustedProposals.length * trustedProposals.length * trustedProposals.length * trustedProposals.length * trustedProposals.length * trustedProposals.length * trustedProposals.length)
}



}
