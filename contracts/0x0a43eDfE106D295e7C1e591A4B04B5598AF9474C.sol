contract main {


// =======================  Init code  ======================


mapping of uint8 stor0;

function _fallback() payable {
    stor0[address(msg.sender)] = 1
    emit MinterAdded(msg.sender);
    return code.data[94 len 3719]
}



// =====================  Runtime code  =====================


const END_MINTING = (409584 * 24 * 3600)


mapping of uint8 stor0;
uint256 totalSupply;
mapping of struct identityOf;
mapping of uint256 ownedToken;
mapping of uint256 allowance;

function totalSupply() payable {
    return totalSupply
}

function identityOf(bytes32 arg1) payable {
    return identityOf[arg1][0 len identityOf[arg1].length].field_0
}

function ownedToken(address arg1) payable {
    return ownedToken[arg1]
}

function balanceOf(address arg1) payable {
    return ownedToken[address(arg1)]
}

function ownerOf(bytes32 arg1) payable {
    return identityOf[arg1].field_256
}

function allowance(address arg1, address arg2) payable {
    return allowance[address(arg1)][address(arg2)]
}

function minters(address arg1) payable {
    return bool(stor0[arg1])
}

function _fallback() payable {
  stop
}

function removeMinter(address arg1) payable {
    if not stor0[address(msg.sender)]:
        return 0
    stor0[address(arg1)] = 0
    emit MinterRemoved(arg1);
    return 1
}

function isTokenOwner(address arg1) payable {
    if 0 == ownedToken[address(arg1)]:
        return ownedToken[address(arg1)] != 0
    return (arg1 == identityOf[stor3[address(arg1)]].field_256)
}

function addMinter(address arg1) payable {
    require block.timestamp < 409584 * 24 * 3600
    if not stor0[address(msg.sender)]:
        return 0
    stor0[address(arg1)] = 1
    emit MinterAdded(arg1);
    return 1
}

function destroy(bytes32 arg1) payable {
    require block.timestamp < 409584 * 24 * 3600
    if not stor0[address(msg.sender)]:
        return 0
    ownedToken[stor2[arg1].field_256] = 0
    identityOf[arg1].field_0 = 0
    identityOf[arg1].field_8 = mem[128 len 31]
    idx = 0
    while identityOf[arg1].length + 31 / 32 > idx:
        identityOf[arg1][idx].field_0 = 0
        idx = idx + 1
        continue 
    identityOf[arg1].field_256 = 0
    emit Destroy(arg1);
    totalSupply--
    return 1
}

function approve(address arg1, uint256 arg2) payable {
    if 0 == arg2:
        return 0
    delegate 0xabf65a51c7adc3bdef0adf8992884be38072c184.0x4f57331d with:
         gas gas_remaining - 50 wei
        args sha3(arg2, 2)
    require delegate.return_code
    if arg2 != delegate.return_data[0]:
        return 0
    if identityOf[arg2].field_256 != msg.sender:
        return 0
    if arg2 != ownedToken[address(msg.sender)]:
        return 0
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    delegate 0xabf65a51c7adc3bdef0adf8992884be38072c184.0xafb95eed with:
         gas gas_remaining - 50 wei
        args msg.sender, address(arg1), arg2
    require delegate.return_code
    return 1
}

function approve(address arg1, bytes32 arg2) payable {
    if 0 == arg2:
        return 0
    delegate 0xabf65a51c7adc3bdef0adf8992884be38072c184.0x4f57331d with:
         gas gas_remaining - 50 wei
        args sha3(arg2, 2)
    require delegate.return_code
    if arg2 != delegate.return_data[0]:
        return 0
    if identityOf[arg2].field_256 != msg.sender:
        return 0
    if arg2 != ownedToken[address(msg.sender)]:
        return 0
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    delegate 0xabf65a51c7adc3bdef0adf8992884be38072c184.0xafb95eed with:
         gas gas_remaining - 50 wei
        args msg.sender, address(arg1), arg2
    require delegate.return_code
    return 1
}

function transfer(address arg1, bytes32 arg2) payable {
    if 0 == arg2:
        return 0
    delegate 0xabf65a51c7adc3bdef0adf8992884be38072c184.0x4f57331d with:
         gas gas_remaining - 50 wei
        args sha3(arg2, 2)
    require delegate.return_code
    if arg2 != delegate.return_data[0]:
        return 0
    if ownedToken[address(arg1)]:
        return 0
    if identityOf[arg2].field_256 != msg.sender:
        return 0
    identityOf[arg2].field_256 = arg1 or Mask(96, 160, identityOf[arg2].field_256)
    ownedToken[address(msg.sender)] = 0
    ownedToken[arg1] = arg2
    delegate 0xabf65a51c7adc3bdef0adf8992884be38072c184.0x85d5c971 with:
         gas gas_remaining - 50 wei
        args msg.sender, address(arg1), arg2
    require delegate.return_code
    return 1
}

function transfer(address arg1, uint256 arg2) payable {
    if 0 == arg2:
        return 0
    delegate 0xabf65a51c7adc3bdef0adf8992884be38072c184.0x4f57331d with:
         gas gas_remaining - 50 wei
        args sha3(arg2, 2)
    require delegate.return_code
    if arg2 != delegate.return_data[0]:
        return 0
    if ownedToken[address(arg1)]:
        return 0
    if identityOf[arg2].field_256 != msg.sender:
        return 0
    identityOf[arg2].field_256 = arg1 or Mask(96, 160, identityOf[arg2].field_256)
    ownedToken[address(msg.sender)] = 0
    ownedToken[arg1] = arg2
    delegate 0xabf65a51c7adc3bdef0adf8992884be38072c184.0x85d5c971 with:
         gas gas_remaining - 50 wei
        args msg.sender, address(arg1), arg2
    require delegate.return_code
    return 1
}

function mint(address arg1, string arg2) payable {
    require block.timestamp < 409584 * 24 * 3600
    if not stor0[address(msg.sender)]:
        return 0
    if ownedToken[address(arg1)]:
        return 0
    delegate 0xabf65a51c7adc3bdef0adf8992884be38072c184.0x19a9c2f1 with:
         gas gas_remaining - 50 wei
        args Array(len=arg2.length, data=arg2[all])
    require delegate.return_code
    delegate 0xabf65a51c7adc3bdef0adf8992884be38072c184.0x4f57331d with:
         gas gas_remaining - 50 wei
        args sha3(delegate.return_data[0], 2)
    if delegate.return_data[0] == delegate.return_data[0]:
        return 0
    identityOf[delegate.return_data[0]].field_256 = arg1 or Mask(96, 160, identityOf[delegate.return_data[0]].field_256)
    identityOf[delegate.return_data[0]][].field_0 = Array(len=arg2.length, data=arg2[all])
    ownedToken[address(arg1)] = delegate.return_data[0]
    emit Mint(delegate.return_data[0], arg1);
    totalSupply++
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    if 0 == arg3:
        return 0
    delegate 0xabf65a51c7adc3bdef0adf8992884be38072c184.0x4f57331d with:
         gas gas_remaining - 50 wei
        args sha3(arg3, 2)
    require delegate.return_code
    if arg3 != delegate.return_data[0]:
        return 0
    if ownedToken[address(arg2)]:
        return 0
    if arg1 != identityOf[arg3].field_256:
        return 0
    if arg3 != ownedToken[address(arg1)]:
        return 0
    if arg3 != allowance[address(arg1)][address(msg.sender)]:
        return 0
    identityOf[arg3].field_256 = arg2 or Mask(96, 160, identityOf[arg3].field_256)
    ownedToken[address(arg1)] = 0
    ownedToken[arg2] = arg3
    allowance[address(arg1)][address(msg.sender)] = 0
    emit Transfer(arg3, arg1, arg2);
    delegate 0xabf65a51c7adc3bdef0adf8992884be38072c184.0x85d5c971 with:
         gas gas_remaining - 50 wei
        args address(arg1), address(arg2), arg3
    require delegate.return_code
    return 1
}

function transferFrom(address arg1, address arg2, bytes32 arg3) payable {
    if 0 == arg3:
        return 0
    delegate 0xabf65a51c7adc3bdef0adf8992884be38072c184.0x4f57331d with:
         gas gas_remaining - 50 wei
        args sha3(arg3, 2)
    require delegate.return_code
    if arg3 != delegate.return_data[0]:
        return 0
    if ownedToken[address(arg2)]:
        return 0
    if arg1 != identityOf[arg3].field_256:
        return 0
    if arg3 != ownedToken[address(arg1)]:
        return 0
    if arg3 != allowance[address(arg1)][address(msg.sender)]:
        return 0
    identityOf[arg3].field_256 = arg2 or Mask(96, 160, identityOf[arg3].field_256)
    ownedToken[address(arg1)] = 0
    ownedToken[arg2] = arg3
    allowance[address(arg1)][address(msg.sender)] = 0
    emit Transfer(arg3, arg1, arg2);
    delegate 0xabf65a51c7adc3bdef0adf8992884be38072c184.0x85d5c971 with:
         gas gas_remaining - 50 wei
        args address(arg1), address(arg2), arg3
    require delegate.return_code
    return 1
}



}
