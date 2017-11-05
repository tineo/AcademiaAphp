<?php

namespace AppBundle\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * Apoderado
 *
 * @ORM\Table(name="apoderado")
 * @ORM\Entity
 */
class Apoderado
{
    /**
     * @var integer
     *
     * @ORM\Column(name="idpersona", type="integer", nullable=true)
     */
    private $idpersona;

    /**
     * @var integer
     *
     * @ORM\Column(name="idalumno", type="integer", nullable=true)
     */
    private $idalumno;

    /**
     * @var string
     *
     * @ORM\Column(name="telefono", type="string", length=15, nullable=true)
     */
    private $telefono;

    /**
     * @var string
     *
     * @ORM\Column(name="afinidad", type="string", length=15, nullable=true)
     */
    private $afinidad;

    /**
     * @var string
     *
     * @ORM\Column(name="email", type="string", length=50, nullable=true)
     */
    private $email;

    /**
     * @var integer
     *
     * @ORM\Column(name="idapoderado", type="integer")
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="IDENTITY")
     */
    private $idapoderado;


}

