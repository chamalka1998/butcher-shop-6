type UserWithRoles = {
  roles?: string[] | null
} | null | undefined

export const isPlatformAdmin = (user: UserWithRoles): boolean => {
  return Boolean(user?.roles?.includes('admin'))
}

export const isShopStaff = (user: UserWithRoles): boolean => {
  return Boolean(user?.roles?.includes('shop-owner') || user?.roles?.includes('shop-staff'))
}
