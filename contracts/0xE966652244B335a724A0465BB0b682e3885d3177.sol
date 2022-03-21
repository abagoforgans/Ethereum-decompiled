contract main {


// =======================  Init code  ======================


const _fallback = code.data[18 len 1717]




// =====================  Runtime code  =====================


address owner;
uint256 stor0;
array of uint256 url;
array of uint256 data;
array of uint256 mimetype;
uint8 mood;
uint256 stor4;
array of uint256 stor5;
array of address reactions;

function mimetype() payable {
    return mimetype[0 len mimetype.length]
}

function url() payable {
    return url[0 len url.length]
}

function reactions(uint256 arg1) payable {
    require arg1 < stor5.length
    return reactions[arg1]
}

function mood() payable {
    return uint8(mood)
}

function data() payable {
    return data[0 len data.length]
}

function owner() payable {
    return address(owner)
}

function kill() payable {
    if address(owner) != msg.sender:
    selfdestruct(address(owner))
}

function _fallback() payable {
  stop
}

function mortal() payable {
    uint256(stor0) = msg.sender or Mask(96, 160, uint256(stor0))
}

function withdraw() payable {
    require msg.sender == address(owner)
    call address(owner) with:
       value eth.balance(this.address) wei
         gas 0 wei
}

function thing(string arg1, string arg2, uint8 arg3, string arg4) payable {
    url[] = Array(len=arg1.length, data=arg1[all])
    data[] = Array(len=arg2.length, data=arg2[all])
    mimetype[] = Array(len=arg4.length, data=arg4[all])
    uint256(stor4) = arg3 or Mask(248, 8, uint256(stor4))
}

function react(address arg1) payable {
    call arg1.0x8da5cb5b with:
         gas gas_remaining - 25050 wei
    require ext_call.success
    require ext_call.return_data[12 len 20] == msg.sender
    stor5.length++
    if not stor5.length <= stor5.length + 1:
        idx = stor5.length + 1
        while stor5.length > idx:
            stor5[idx] = 0
            idx = idx + 1
            continue 
    stor5[stor5.length] = arg1 or Mask(96, 160, stor5[stor5.length])
}



}
