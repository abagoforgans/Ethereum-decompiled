contract main {


// =======================  Init code  ======================


array of uint256 stor0;

function _fallback() payable {
    call 0x084f6a99003dae6d3906664fdbf43dd09930d0e3.register(bytes32 rg1) with:
         gas gas_remaining - 25050 wei
        args 'Contract'
    require ext_call.success
    mem[128] = 'Testing for real Ether how dare '
    mem[160] = 'you ?!!'
    stor0.length = 79
    s = 0x290decd9548b62a8d60345a988386fc84ba6bc95484008f6362f93160ef3e563
    idx = 128
    while 167 > idx:
        stor[s] = mem[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 0x290decd9548b62a8d60345a988386fc84ba6bc95484008f6362f93160ef3e565
    while (stor0.length + 31 / 32) + 0x290decd9548b62a8d60345a988386fc84ba6bc95484008f6362f93160ef3e563 > idx:
        stor[idx] = 0
        idx = idx + 1
        continue 
    return code.data[389 len 458]
}



// =====================  Runtime code  =====================


const nameRegAddress = 0x84f6a99003dae6d3906664fdbf43dd09930d0e3


array of uint256 stor0;

function _fallback() payable {
  stop
}

function setTestString(string arg1) payable {
    stor0[] = Array(len=arg1.length, data=arg1[all])
}

function named(bytes32 arg1) payable {
    call 0x084f6a99003dae6d3906664fdbf43dd09930d0e3.addressOf(bytes32 rg1) with:
         gas gas_remaining - 25050 wei
        args arg1
    require ext_call.success
    return ext_call.return_data[12 len 20]
}



}
